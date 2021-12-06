import 'package:flutter/material.dart';

class AppColors {
  static const transparentPurple = Color.fromRGBO(185, 172, 188, 0.3);
  static const descPurple = Color.fromRGBO(80, 66, 108, 0.8);
  static const darkPurple = Color.fromRGBO(36, 15, 81, 1);
  static const purple = Color.fromRGBO(83, 20, 214, 0.76);
  static const blue = Color.fromRGBO(89, 39, 235, 1);
  static const accentPurple = Color.fromRGBO(195, 60, 232, 1);
  static const white = Colors.white;
  static const whitePurple = Color.fromRGBO(251, 249, 255, 1);
  static const orange = Color.fromRGBO(255, 192, 28, 1);
  static const red = Color.fromRGBO(255, 54, 99, 1);
  static const cardGradient1 = RadialGradient(
      colors: [red, orange], center: Alignment(-0.7, -0.7), radius: 1.3);
  static const cardGradient2 = LinearGradient(
      colors: [blue, accentPurple, accentPurple],
      stops: [0, 0.6, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(0.4));
}
