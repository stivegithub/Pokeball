import 'package:application/conf/text_style.dart';
import 'package:flutter/material.dart';

Widget portraitContainer(data) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Align(
        alignment: Alignment.bottomLeft,
        child: headingText(color: Colors.white, size: 30, text: 'stivearnaud3'),
      ),
      Row(
        children: [
          typeContainer(color: Colors.white, size: 16, text: 'Grass'),
          const SizedBox(
            width: 6,
          ),
          typeContainer(color: Colors.white, size: 16, text: 'poisson')
        ],
      ),
      Align(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.network(
              data['imageurl'],
              width: 200,
              height: 100,
            ),
            Text(data['egg_groups'])
          ],
        ),
      )
    ],
  );
}
