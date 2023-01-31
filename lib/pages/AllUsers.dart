// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'chatusers.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class PersonalChat extends StatefulWidget {
//   const PersonalChat({Key? key}) : super(key: key);
//   @override
//   State<PersonalChat> createState() => _PersonalChatState();
// }
//
// class _PersonalChatState extends State<PersonalChat> {
//   Color textcolor = HexColor("#BEBEBE");
//   @override
//   Widget build(BuildContext context) {
//     var mediaQuery = MediaQuery.of(context);
//     final height = mediaQuery.size.height / 20;
//     final width = mediaQuery.size.width * 0.50;
//     final heightcontainer2 = mediaQuery.size.height / 30;
//     final widthcontainer2 = mediaQuery.size.width * 0.35;
//     double deviceHeight(BuildContext context) =>
//         MediaQuery.of(context).size.height;
//     double deviceWidth(BuildContext context) =>
//         MediaQuery.of(context).size.width;
//     List<ChatUsers> chatUsers = [
//       ChatUsers(
//           name: "Jane Russel",
//           messageText: "Awesome Setup",
//           imageURL: "images/userImage1.jpeg",
//           time: "Now"),
//       ChatUsers(
//           name: "Glady's Murphy",
//           messageText: "That's Great",
//           imageURL: "images/userImage2.jpeg",
//           time: "Yesterday"),
//       ChatUsers(
//           name: "Jorge Henry",
//           messageText: "Hey where are you?",
//           imageURL: "images/userImage3.jpeg",
//           time: "31 Mar"),
//       ChatUsers(
//           name: "Philip Fox",
//           messageText: "Busy! Call me in 20 mins",
//           imageURL: "images/userImage4.jpeg",
//           time: "28 Mar"),
//       ChatUsers(
//           name: "Debra Hawkins",
//           messageText: "Thankyou, It's awesome",
//           imageURL: "images/userImage5.jpeg",
//           time: "23 Mar"),
//       ChatUsers(
//           name: "Jacob Pena",
//           messageText: "will update you in evening",
//           imageURL: "images/userImage6.jpeg",
//           time: "17 Mar"),
//       ChatUsers(
//           name: "Andrey Jones",
//           messageText: "Can you please share the file?",
//           imageURL: "images/userImage7.jpeg",
//           time: "24 Feb"),
//       ChatUsers(
//           name: "John Wick",
//           messageText: "How are you?",
//           imageURL: "images/userImage8.jpeg",
//           time: "18 Feb"),
//       ChatUsers(
//           name: "John Wick",
//           messageText: "How are you?",
//           imageURL: "images/userImage8.jpeg",
//           time: "18 Feb"),
//       ChatUsers(
//           name: "John Wick",
//           messageText: "How are you?",
//           imageURL: "images/userImage8.jpeg",
//           time: "18 Feb"),
//       ChatUsers(
//           name: "John Wick",
//           messageText: "How are you?",
//           imageURL: "images/userImage8.jpeg",
//           time: "18 Feb"),
//     ];
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: deviceWidth(context) * 0.10),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: AutoSizeText(
//                   'CONVERSATIONS',
//                   style: GoogleFonts.russoOne(
//                     color: textcolor,
//                     fontSize: 20 * mediaQuery.textScaleFactor,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: mediaQuery.size.height / 40,
//             ),
//             Expanded(
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: chatUsers.length,
//                   itemBuilder: (contex, index) =>
//                           InkWell(
//                               // onTap: () {
//                               //   // sourceChat = chatmodels.removeAt(index);
//                               //   Navigator.pushReplacement(
//                               //       context,
//                               //       MaterialPageRoute(
//                               //           builder: (builder) => Homescreen(
//                               //             chatmodels: chatmodels,
//                               //             sourchat: sourceChat!,
//                               //           )));
//                               // },
//                               child: Padding(
//                             padding: EdgeInsets.only(
//                                 left: deviceWidth(context) * 0.010),
//                             child: chatCotainer(
//                                 context,
//                                 chatUsers[index].name,
//                                 chatUsers[index].messageText,
//                                 chatUsers[index].time,
//                                 ''),
//                           )),
//                           // SizedBox(
//                           //   height: mediaQuery.size.height / 80,
//                           // ),
//
//                       )),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Widget chatCotainer(
//   BuildContext context,
//   String name,
//   String lastseen,
//   String wherehe,
//   String? image,
// ) {
//   var mediaQuery = MediaQuery.of(context);
//   double deviceHeight(BuildContext context) =>
//       MediaQuery.of(context).size.height;
//   double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
//   Color namecolor = HexColor("#2B2B2B");
//   Color lastseencolor = HexColor("#FFABA8");
//   Color wherehecolor = HexColor("#FF928E");
//   return Container(
//     height: mediaQuery.size.height / 8,
//     width: mediaQuery.size.width * 0.900,
//     // color: Colors.black,
//     child: Stack(
//       children: [
//         Positioned(
//           top: 20,
//           left: 10,
//           child: Container(
//               height: mediaQuery.size.height / 10.5,
//               width: mediaQuery.size.width * 0.90,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.shade300,
//                       blurRadius: 2, // soften the shadow
//                       spreadRadius: 1, //extend the shadow
//                       offset: const Offset(
//                         0.05, // Move to right 5  horizontally
//                         0.05, // Move to bottom 5 Vertically
//                       ),
//                     )
//                   ]
//                   //more than 50% of width makes circle
//                   ),
//               child: Padding(
//                 padding: EdgeInsets.only(left: deviceWidth(context) * 0.25),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.baseline,
//                   textBaseline: TextBaseline.ideographic,
//                   children: [
//                     Padding(
//                       padding:  EdgeInsets.only(top: deviceHeight(context)*0.005),
//                       child: AutoSizeText(
//                         name,
//                         style:
//                             TextStyle(fontFamily: 'Helvetica', color: namecolor),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(
//                           bottom: deviceHeight(context) * 0.020),
//                       child: AutoSizeText(
//                         lastseen,
//                         style: TextStyle(
//                             fontFamily: 'Helvetica',
//                             color: lastseencolor,
//                             fontSize: 12 * mediaQuery.textScaleFactor),
//                       ),
//                     ),
//                     AutoSizeText(
//                       wherehe,
//                       style: TextStyle(
//                           fontSize: 10 * mediaQuery.textScaleFactor,
//                           fontFamily: 'Helvetica',
//                           color: wherehecolor),
//                     ),
//                   ],
//                 ),
//               )),
//         ),
//         Positioned(
//             bottom: 20,
//             left: -5,
//             child: SvgPicture.asset(
//               'assets/svg/common.svg',
//               height: mediaQuery.size.height / 10,
//               width: mediaQuery.size.width * 0.100,
//             )),
//       ],
//     ),
//   );
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart';
import 'chatroom.dart';

class AllUsers extends StatefulWidget {
  const AllUsers({Key? key}) : super(key: key);
  @override
  State<AllUsers> createState() => _AllUsersState();
}

final TextEditingController _search = TextEditingController();
final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
Map<String, dynamic>? userMap;
String chatRoomId(String user1, String user2) {
  if (user1[0].toLowerCase().codeUnits[0] > user2.toLowerCase().codeUnits[0]) {
    return "$user1$user2";
  } else {
    return "$user2$user1";
  }
}

class _AllUsersState extends State<AllUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("users")
              // .where('uid',
              //     isNotEqualTo: FirebaseAuth.instance.currentUser!.uid)
              .snapshots(),
          builder: ((context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                UserModel user = UserModel.fromJson(snapshot.data!.docs[index]);
                return InkWell(
                  autofocus: true,
                  onTap:(){
                    print('${user.userName[index]}USER');
                    String roomId =
                        chatRoomId(user.userName[index], userMap!['name']);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatRoom(
                            chatRoomId: roomId,
                            userMap: userMap!,
                          ),
                        ));
                  },
                  child: ListTile(
                    title: Text(user.userName),
                    subtitle: Text(user.userEmail),
                  ),
                );
              },
            );
          })),
    );
  }
}
