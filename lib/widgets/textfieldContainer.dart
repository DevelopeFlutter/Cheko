import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget textfield(BuildContext context, String img, String hintText,
    double scale, TextEditingController controller) {
  Color color1 = HexColor("#FFABA8");
  var mediaQuery = MediaQuery.of(context);
  return Container(
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
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: mediaQuery.size.height / 13,
              width: mediaQuery.size.width * 0.14,
              decoration: BoxDecoration(
                color: color1,
                borderRadius: BorderRadius.circular(8),
                // elevation: 0,
              ),
              child: Image.asset(
                img,
                color: Colors.white,
                scale: scale,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  controller: controller,
                  cursorColor: color1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                    isDense: true, //Set this to true
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    // isDense: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
