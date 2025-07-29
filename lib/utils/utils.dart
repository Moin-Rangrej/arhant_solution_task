import 'package:flutter/material.dart';

class fontSize {
  static const double fontSize_12 = 12;
  static const double fontSize_14 = 14;
  static const double fontSize_16 = 16;
  static const double fontSize_18 = 18;
  static const double fontSize_20 = 20;
  static const double fontSize_22 = 22;
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
  static const Color slateIndigo = Color(0xFF5E668C);
  static const Color lightGray = Color(0xFFDBDBE0);
  static const Color darkCoolGray = Color(0xFF667085);
  static const Color lightApplegreen = Color(0x1A34C759);
  static const Color appSuccessGreen = Color(0xFF34C759);
  static const Color lightRedColor = Color(0x80FF3B30);
  static const Color softGray = Color(0xFF86868B);
  static const Color ghostWhite = Color(0xFFF0F2F5);
  static const Color steelBlue = Color(0xFF4A739C);
}

class validation {
  static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final phoneRegex = RegExp(r'^[6-9]\d{9}$');
}

class appImage {
  static const imagePath = "lib/assets/image";
}
