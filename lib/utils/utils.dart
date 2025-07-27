import 'package:flutter/material.dart';

class fontSize {
  static const double fontSize_12 = 12;
  static const double fontSize_14 = 14;
  static const double fontSize_16 = 16;
  static const double fontSize_18 = 18;
  static const double fontSize_20 = 20;
}

class appColor {
  static const Color AppColor_black = Colors.black;
  static const Color lightGrey40 = Color(0x66EBEDEE);
  static const Color lightCoolGray = Color(0xFFE3E6EA);
  static const Color primaryTextDark = Color(0xFF1F2937);
  static const Color mutedBlueGray = Color(0xFF61758A);
  static const Color primaryBlue = Color(0xFF007AFF);
  static const Color bgWhite = Color(0xFFFFFFFF);
  static const Color errorColor = Color(0xFFFF0000);
}

class validation {
  static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final phoneRegex = RegExp(r'^[6-9]\d{9}$');
}
