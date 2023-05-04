import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF0C9869);
  static const text = Color(0xFF3C4046);
  static const background = Color(0xFFF9F8FD);
}

class MaterialColors {
  static const primary = MaterialColor(
    0xFF0C9869,
    <int, Color>{
      50: Color(0xFF0b895f),
      100: Color(0xFF0a7a54),
      200: Color(0xFF086a4a),
      300: Color(0xFF075b3f),
      400: Color(0xFF064c35),
      500: Color(0xFF053d2a),
      600: Color(0xFF042e1f),
      700: Color(0xFF021e15),
      800: Color(0xFF010f0a),
      900: Color(0xFF000000),
    },
  );
}

const double defaultPadding = 20.0;
