import 'package:application/conf/text_style.dart';
import 'package:flutter/material.dart';

Widget rowStyling({String? text, String? value}) {
  return Row(
    children: [
      SizedBox(
        width: 100,
        child: headingText(color: Colors.grey, size: 16, text: text),
      ),
      headingText(color: Colors.grey, text: value, size: 16)
    ],
  );
}
