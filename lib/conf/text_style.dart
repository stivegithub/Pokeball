import 'package:flutter/material.dart';

Widget headingText({String? text, Color? color, double? size}) {
  return Text(
    text!,
    style: TextStyle(fontSize: size, fontWeight: FontWeight.bold, color: color),
  );
}

Widget normalText({String? text, Color? color, double? size}) {
  return Text(
    text!,
    style: TextStyle(fontSize: size, fontFamily: 'circular_bold', color: color),
  );
}

Widget typeContainer({String? text, Color? color, double? size}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.30),
        borderRadius: BorderRadius.circular(12)),
    child: normalText(color: color, size: size, text: text),
  );
}
