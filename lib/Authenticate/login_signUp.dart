import 'package:cheko/widgets/textfieldContainer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../search_functionality.dart';
import 'Methods.dart';
import '../pages/IndividualUsers.dart';
import '../widgets/signUp_button.dart';
import '../pages/Dash_board.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginSignUp extends StatefulWidget {
  const LoginSignUp({Key? key}) : super(key: key);
  @override
  State<LoginSignUp> createState() => _LoginSignUpState();
}

final FirebaseAuth _auth = FirebaseAuth.instance;

class _LoginSignUpState extends State<LoginSignUp>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  bool LoginIsLoading = false;

  TextEditingController name = TextEditingController();
  TextEditingController matricnumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpassword = TextEditingController();

  Color color1 = HexColor("#FFABA8");
  String? dropdownValue;
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;
    var mediaQuery = MediaQuery.of(context);
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : DefaultTabController(
            length: 2,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/svg/back1.svg',
                  ),
                  Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: deviceWidth(context) * 0.10,
                            top: deviceHeight(context) / 15),
                        child: SvgPicture.asset(
                          'assets/svg/logo.svg',
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height / 40),
                    SizedBox(
                      width: mediaQuery.size.width * 0.85,
                      child: TabBar(
                        onTap: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        unselectedLabelStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 20,
                          // fontWeight: FontWeight.w600
                        ),
                        labelStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                        indicator: UnderlineTabIndicator(
                            insets:
                                const EdgeInsets.symmetric(horizontal: 16.5),
                            borderSide: BorderSide(
                              width: 4,
                              color: color1,
                            )),
                        isScrollable: true,
                        indicatorColor: color1,
                        tabs: [
                          const Tab(
                              child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          const Tab(
                              child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                          width: mediaQuery.size.width * 0.80,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              border: Border(
                                  bottom: BorderSide(
                                color: color1,
                                width: 1.5,
                              )))),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        LoginIsLoading
                            ? Center(child: CircularProgressIndicator())
                            : Column(children: [
                                SizedBox(
                                  height: mediaQuery.size.height / 10,
                                ),
                                textfield(context, 'assets/new.png',
                                    'Your Email', 2, loginemail),
                                SizedBox(
                                  height: mediaQuery.size.height / 22,
                                ),
                                textfield(context, 'assets/iconpass.png',
                                    'Your Password', 2, loginpassword),
                                SizedBox(
                                  height: mediaQuery.size.height / 65,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Recover",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          "Password",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: color1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mediaQuery.size.height / 15,
                                ),
                                button(context, 'LOGIN', () {
                                  if (loginemail.text.isNotEmpty &&
                                      loginemail.text.isNotEmpty) {
                                    setState(() {
                                      LoginIsLoading = true;
                                    });
                                    login(loginemail.text, loginpassword.text)
                                        .then((value) {
                                      if (value != null) {
                                        setState(() {
                                          LoginIsLoading = false;
                                        });
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Dashboard_screen())
                                        );
                                      } else {
                                        setState(() {
                                          false;
                                        });
                                      }
                                    });
                                  }

                                }),
                              ]),
                        Column(children: [
                          SizedBox(
                            height: mediaQuery.size.height / 20,
                          ),
                          Container(
                            height: mediaQuery.size.height / 13,
                            width: mediaQuery.size.width * 0.85,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 8.0, // soften the shadow
                                    // spreadRadius: 5.0, //extend the shadow
                                    offset: const Offset(
                                      0.05, // Move to right 5  horizontally
                                      0.05, // Move to bottom 5 Vertically
                                    ),
                                  )
                                ]
                                //more than 50% of width makes circle
                                ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 15),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  isDense: true,
                                  isExpanded: true,
                                  hint: Text(
                                    dropdownValue == null
                                        ? 'Select Institution'
                                        : '$dropdownValue',
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  value: dropdownValue,
                                  iconDisabledColor: color1,
                                  iconEnabledColor: color1,
                                  iconSize: 50,
                                  elevation: 16,
                                  // style: TextStyle(color: Colors.deepPurple),
                                  // underline: Container(
                                  //       height: 2,
                                  //       color: Colors.redAccent,
                                  // ),
                                  onChanged: (newValue) {
                                    setState(() {
                                      dropdownValue = newValue;
                                    });
                                  },
                                  items: <String>['One', 'Two', 'Free', 'Four']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Row(children: [
                                        Text(value),
                                      ]),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height / 35,
                          ),
                          textfield(context, 'assets/new.png', 'Matric Number',
                              2, matricnumber),
                          SizedBox(
                            height: mediaQuery.size.height / 35,
                          ),
                          textfield(
                              context, 'assets/new.png', 'Full Name', 2, name),
                          SizedBox(
                            height: mediaQuery.size.height / 35,
                          ),
                          textfield(context, 'assets/new.png', 'Your Email', 2,
                              email),
                          SizedBox(
                            height: mediaQuery.size.height / 35,
                          ),
                          textfield(context, 'assets/iconpass.png', 'Password',
                              2, password),
                          SizedBox(
                            height: mediaQuery.size.height / 15,
                          ),
                          button(context, 'CREATE ACCOUNT', () {
                            if (name.text.isNotEmpty &&
                                email.text.isNotEmpty &&
                                matricnumber.text.isNotEmpty &&
                                password.text.isNotEmpty) {
                              setState(() {
                                isLoading = true;
                              });
                              createAccount(name.text, email.text,
                                      password.text, matricnumber.text)
                                  .then((user) {
                                if (user != null) {
                                  setState(() {
                                    isLoading = false;
                                  });

                                  print('Login  Succesful ');
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          HomeScreen ())
                                  );
                                }
                              });
                            } else {
                              print('Please enter fields');
                            }
                          }),
                        ]),
                      ]),
                    ),
                  ]),
                ],
              ),
            ));
  }
}

class ForTest extends StatefulWidget {
  const ForTest({Key? key}) : super(key: key);

  @override
  State<ForTest> createState() => _ForTestState();
}

class _ForTestState extends State<ForTest> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    Color color1 = HexColor("#FFB9B7");
    Color color2 = HexColor("#FF8F8B");
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: Center(
      child: Container(
        height: mediaQuery.size.height / 20,
        width: mediaQuery.size.width * 0.50,
        child: const Text(
          'INVITE YOUR FRIENDS',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
      ),
    ));
  }
}
