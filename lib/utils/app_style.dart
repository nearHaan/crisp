import 'package:flutter/material.dart';

class AppStyle{
  static Color yellow = const Color(0xffffb406);
  static Color green = const Color(0xFF03733f);
  static Color grey = const Color(0xFFf1f1ef);
  static Color red = const Color(0xFFf4593b);
  static Color blue = const Color(0xFF1e42a0);

  static TextStyle logoText = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 30
  );

  static TextStyle weatherBigText = TextStyle(
      color: Colors.white,
      fontSize: 50
  );

  static TextStyle mediumText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold
  );

  static TextStyle boldSmallText = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 13
  );

  static TextStyle smallText = TextStyle(
    fontSize: 13
  );
}