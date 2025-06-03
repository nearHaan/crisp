import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppStyle{
  static Color yellow = const Color(0xffffb406);
  static Color green = const Color(0xFF03733f);
  static Color grey = const Color(0xFFf1f1ef);

  static TextStyle logoText = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontSize: 30
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