import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
Widget button(
    BuildContext context,
    String text,
    VoidCallback onpressed,
    ) {
  Color color1 = HexColor("#FF928E");
  Color color2 = HexColor("#FF625C");
  var mediaQuery = MediaQuery.of(context);
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      // backgroundColor:
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    onPressed: onpressed,
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color1, color2]),
          borderRadius: BorderRadius.circular(5)),
      child: Container(
        height: mediaQuery.size.height / 13,
        width: mediaQuery.size.width * 0.85,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}