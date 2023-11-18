import 'package:flutter/material.dart';

class Styles {
  static const Color primaryColor = Color.fromARGB(255, 18, 182, 72);
  static const Color bgColorwhite = Color(0xFFeeedf2);
  static const Color bgColorBlack = Color(0xFF000000);
  static const Color textColor = Color(0xFF000000);
  static const TextStyle title1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle title2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle title3 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle content1 =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static const TextStyle content2 =
      TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w500);

  static const TextStyle content3 =
      TextStyle(fontSize: 16, color: Color.fromARGB(115, 0, 0, 0), fontWeight: FontWeight.w500, );
}
