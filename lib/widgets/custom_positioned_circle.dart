import 'package:flutter/cupertino.dart';

Widget buildCustomPositioned(String imgPath)
{
  return Positioned(
    top: 0,
    right: 0,
    child: Image(
      image: AssetImage(imgPath),
    ),
  );
}