import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size.dart';
import 'custom_positioned_circle.dart';

Widget buildCustomCard(
    BuildContext context,
    Color color,
    String iconPath,
    String txt1,
    String txt2
    ) {
  return Stack(
    alignment: Alignment.bottomLeft,
    children: [
      Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
        height: getWidth(context) * 0.41,
        width: getWidth(context) * 0.41,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(iconPath),
            ),
            SizedBox(
              height: 5,
            ),
            Text(txt1,style: TextStyle(
              color: Colors.white,
                fontSize: 12,
                fontFamily: 'Montserrat'
            ),),
            SizedBox(
              height: 5,
            ),
            Text(txt2,style: TextStyle(
                color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat'
            ),),
          ],
        ),
      ),
      buildCustomPositioned('assets/images/circle1.png'),
      buildCustomPositioned('assets/images/circle2.png'),
    ],
  );
}
