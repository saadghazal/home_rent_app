import 'package:flutter/material.dart';

class AppTheme {
  static const blueDark = Color(0xFF222831);
  static const bonusColor = Color(0xFF475569);
  static const navGrey = Color(0xFF393E48);
  static const appGrey = Color(0xFFEEEEEE);
  static const appOrange = Color(0xFFFFBF75);
  static const mainColor = Color(0xFF684DEC);

  static LinearGradient buttonGradient() {
    return LinearGradient(
      colors: [Color(0xFF917AFD), Color(0xFF6246EA)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
