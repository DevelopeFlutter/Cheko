// ignore_for_file: camel_case_types
import 'package:cheko/Theme/app_Colors.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Theme/app_Colors.dart';
import '../jsondata.dart';
import '../widgets/DashBoard_small_container.dart';

class Dashboard_screen extends StatefulWidget {
  const Dashboard_screen({Key? key}) : super(key: key);
  @override
  State<Dashboard_screen> createState() => _Dashboard_screenState();
}
class _Dashboard_screenState extends State<Dashboard_screen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 1);
  }
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height / 20;
    final width = mediaQuery.size.width * 0.50;
    final heightcontainer2 = mediaQuery.size.height / 30;
    final widthcontainer2 = mediaQuery.size.width * 0.35;
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        SizedBox(
      height: mediaQuery.size.height / 10,
        ),
        Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              SvgPicture.asset(
                'assets/svg/small.svg',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SvgPicture.asset(
                  'assets/svg/large.svg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SvgPicture.asset(
                  'assets/svg/medium.svg',

                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: deviceWidth(context) * 0.15),
            child: container(
                height,
                width,
             appcolors.   color1,
                appcolors. color2,
                'INVITE YOUR FRIENDS',
                FontWeight.w500,
                14 * mediaQuery.textScaleFactor),
          ),
          Padding(
            padding: EdgeInsets.only(left: deviceWidth(context) * 0.05),
            child: SvgPicture.asset(
              'assets/svg/search.svg',
            ),
          )
        ],
      ),
        ),
        SizedBox(
      height: mediaQuery.size.height / 25,
        ),
        DefaultTabController(
        length: 4,
        child: Container(
          height: mediaQuery.size.height / 12,
          width: mediaQuery.size.width * 0.900,
          // color: Colors.brown,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 15, // soften the shadow
                  // spreadRadius: 5.0, //extend the shadow
                  offset: const Offset(
                    0.5, // Move to right 5  horizontally
                    0.05, // Move to bottom 5 Vertically
                  ),
                )
              ]
              // elevation: 0,
              ),
          child: TabBar(
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            indicator: UnderlineTabIndicator(
                insets: const EdgeInsets.symmetric(horizontal: 16.5),
                borderSide: BorderSide(
                  width: 6,
                  color:  appcolors.color1,
                )),
            // isScrollable:true,
            unselectedLabelStyle: const TextStyle(color: Colors.green),
            // labelColor: Colors.red,
            labelStyle: const TextStyle(color: Colors.yellow),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor:  appcolors.inidactorcolor,
            tabs: [
              SvgPicture.asset(
                color: currentIndex == 0 ?  appcolors.color3 : null,
                'assets/svg/newspaper.svg',
              ),
              SvgPicture.asset(
                color: currentIndex == 1 ?  appcolors.color3 : Colors.black,
                'assets/svg/notification1.svg',
              ),
              SvgPicture.asset(
                color: currentIndex == 2 ?  appcolors.color3 : null,
                'assets/svg/group2.svg',
              ),
              SvgPicture.asset(
                color: currentIndex == 3 ?  appcolors.color3 : null,
                'assets/svg/message.svg',
              ),
            ],
          ),
        )),
        SizedBox(
      height: mediaQuery.size.height / 30,
        ),
         Expanded(
       child: TabBarView(
         controller: _controller,
         children: [
          Column(
            children: [
              Container(
                height: mediaQuery.size.height / 4.8,
                width: mediaQuery.size.width * 0.900,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0, // soften the shadow
                        // spreadRadius: 2.0, //extend the shadow
                        offset: const Offset(
                          0.05, // Move to right 5  horizontally
                          0.05, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Positioned(
                      left: deviceWidth(context) * 0.0 - 8,
                      top: deviceHeight(context) / 40,
                      child: Container(
                        height: mediaQuery.size.height / 8,
                        width: mediaQuery.size.width * 0.35,
                        decoration: const BoxDecoration(
                            // border: Border.all(color: Colors.black, width: 1),
                            shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          'assets/svg/common.svg',
                        ),
                      ),
                    ),
                    Positioned(
                        top: deviceHeight(context) * 0.02,
                        right: deviceWidth(context) * 0.04,
                        child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset('assets/user.png',
                                fit: BoxFit.cover, color:  appcolors.color3))),
                    Positioned(
                      left: deviceWidth(context) * 0.30,
                      top: deviceHeight(context) / 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(
                            'Hi!',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color:  appcolors.hiText),
                          ),
                          AutoSizeText(
                            '@themechengi',
                            style: TextStyle(color:  appcolors.themechangecolor),
                          ),
                          AutoSizeText(
                            'John Adekunle Ahmed',
                            style: TextStyle(
                                fontSize: mediaQuery.textScaleFactor * 16,
                                fontWeight: FontWeight.w500),
                          ),
                          AutoSizeText(
                            'Mechanical Engineering',
                            style: TextStyle(
                                fontSize: 10 * mediaQuery.textScaleFactor),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              container(
                                  heightcontainer2,
                                  widthcontainer2,
                                  appcolors.color1,
                                  appcolors. color2,
                                  'MAT. NO. 128379U21',
                                  FontWeight.w500,
                                  11 * mediaQuery.textScaleFactor),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: deviceWidth(context) * 0.69,
                      top: deviceHeight(context) / 7,
                      // right:deviceWidth(context) * 0.0 ,
                      child: AutoSizeText(
                        '200L',
                        style: TextStyle(
                            fontSize: 25 * mediaQuery.textScaleFactor,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: deviceWidth(context) * 0.05,
                    top: deviceHeight(context) / 60),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      'Reels',
                      style: GoogleFonts.russoOne(
                          color:  appcolors.reelstextcolor,
                          fontSize: 30 * mediaQuery.textScaleFactor,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(
                height: mediaQuery.size.height / 300,
              ),
              SizedBox(
                height: mediaQuery.size.height / 5,
                // width: mediaQuery.size.width*0.90,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: SampleJSON.user.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            SampleJSON.user[index]['image']!,
                            height: mediaQuery.size.height / 8,
                            width: mediaQuery.size.width * 0.30,
                            // fit: BoxFit.scaleDown
                            // allowDrawingOutsideViewBox: true,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: AutoSizeText(
                              SampleJSON.user[index]['name']!,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: deviceWidth(context) * 0.05,
                      top: deviceHeight(context) / 60),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        'My Feed',
                        style: GoogleFonts.russoOne(
                            color:  appcolors.reelstextcolor,
                            fontSize: 30 * mediaQuery.textScaleFactor,
                            fontWeight: FontWeight.w600),
                      ))),
              SizedBox(
                height: mediaQuery.size.height / 40,
              ),
              Column(
                children: [
                  Container(
                    height: mediaQuery.size.height / 8.5,
                    width: mediaQuery.size.width * 0.900,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 10.0, // soften the shadow
                            // spreadRadius: 2.0, //extend the shadow
                            offset: const Offset(
                                0.0, // Move to right 5  horizontally
                                4 // Move to bottom 5 Vertically
                                ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: mediaQuery.size.height / 7,
                            width: mediaQuery.size.width * 0.25,
                            decoration: BoxDecoration(
                                color:  appcolors.containertcolor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: deviceHeight(context) * 0.010),
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: AutoSizeText(
                                  'L',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      fontSize:
                                          100 * mediaQuery.textScaleFactor,
                                      color:  appcolors.Largetextcolor,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: deviceHeight(context) * 0.02,
                                left: deviceHeight(context) * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                Text(
                                  'MECH 201',
                                  style: TextStyle(
                                      // color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      color:  appcolors.mechtextcolor,
                                      fontFamily: 'Helvetica',
                                      fontSize:
                                          16 * mediaQuery.textScaleFactor),
                                ),
                                Text('12 Jan 20',
                                    style: TextStyle(
                                        color:  appcolors.smalltextcolor,
                                        fontSize:
                                            12 * mediaQuery.textScaleFactor)),
                                SizedBox(
                                  height: mediaQuery.size.height / 40,
                                ),
                                Text('Eng. Johnso Paul',
                                    style: TextStyle(
                                        color:  appcolors.mechtextcolor, fontSize: 12)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: deviceHeight(context) * 0.02,
                            ),
                            child: Column(
                              children: [
                                AutoSizeText('Mechanical Lab',
                                    style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      color:  appcolors.labtextcolor,
                                      fontWeight: FontWeight.w100,
                                      fontSize:
                                          5 * mediaQuery.textScaleFactor,
                                    )),
                                SizedBox(
                                  height: mediaQuery.size.height / 50,
                                ),
                                AutoSizeText.rich(TextSpan(
                                    text: '2:30',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.w600,
                                        color:  appcolors.mechtextcolor,
                                        fontSize:
                                            40 * mediaQuery.textScaleFactor),
                                    children: [
                                      TextSpan(
                                        text: 'PM',
                                        style: TextStyle(
                                            fontFamily: 'Helvetica',
                                            fontWeight: FontWeight.w600,
                                            color:  appcolors.mechtextcolor,
                                            fontSize: 10 *
                                                mediaQuery.textScaleFactor),
                                      )
                                    ])),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),


        ]),
         ),

      ]),
    );
  }
}


