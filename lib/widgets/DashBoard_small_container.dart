import 'package:flutter/material.dart';
Widget container(
    height, width, color1, color2, text, fontWeight, double FontSize) {
  return Container(
    height: height,
    width: width,
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
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: fontWeight, fontSize: FontSize),
      ),
    ),
  );
}