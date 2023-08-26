import 'package:application/conf/text_style.dart';
import 'package:flutter/material.dart';

Widget landSpace() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          headingText(color: Colors.white, size: 30, text: 'stivearnaud3'),
          Row(
            children: [
              typeContainer(color: Colors.white, size: 16, text: 'Grass'),
              const SizedBox(
                width: 6,
              ),
              typeContainer(color: Colors.white, size: 16, text: 'poisson'),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
      Align(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'images/pocket.jpeg',
              width: 200,
              height: 100,
            )
          ],
        ),
      )
    ],
  );
}
