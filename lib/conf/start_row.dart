import 'package:application/conf/text_style.dart';
import 'package:flutter/material.dart';

Widget statnow({String? text, String? value}) {
  return Row(
    children: [
      SizedBox(
        width: 100,
        child: headingText(color: Colors.grey, size: 16, text: text),
      ),
      SizedBox(
        width: 100,
        child: headingText(color: Colors.grey, size: 16, text: value),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(children: [
          statnow(text: "HP", value: "20"),
          statnow(text: "Attack", value: "70"),
          statnow(text: "Defense", value: "40"),
          statnow(text: "Evolution", value: "90")
        ]),
      )
    ],
  );
}
