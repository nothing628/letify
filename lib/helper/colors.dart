import 'package:flutter/material.dart';
import 'dart:math';

class AppColors {
  static const transparentPurple = Color.fromRGBO(185, 172, 188, 0.3);
  static const descPurple = Color.fromRGBO(80, 66, 108, 0.8);
  static const darkPurple = Color.fromRGBO(36, 15, 81, 1);
  static const softPurple = Color.fromRGBO(84, 57, 139, 0.76);
  static const purple = Color.fromRGBO(83, 20, 214, 0.76);
  static const blue = Color.fromRGBO(89, 39, 235, 1);
  static const accentPurple = Color.fromRGBO(195, 60, 232, 1);
  static const white = Colors.white;
  static const whitePurple = Color.fromRGBO(251, 249, 255, 1);
  static const orange = Color.fromRGBO(255, 192, 28, 1);
  static const red = Color.fromRGBO(255, 54, 99, 1);
  static const redPurple = Color.fromRGBO(235, 39, 157, 1);
  static const redOrange = Color.fromRGBO(241, 78, 78, 1);
  static const cardGradient1 = RadialGradient(
      colors: [red, orange], center: Alignment(-0.7, -0.7), radius: 1.3);
  static const cardGradient2 = LinearGradient(
      colors: [blue, accentPurple, accentPurple],
      stops: [0, 0.6, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(0.4));

  static Gradient incomeGradient = LinearGradient(
    colors: [
      blue.withOpacity(0.1),
      accentPurple.withOpacity(0.1),
      accentPurple.withOpacity(0.1)
    ],
    stops: const [0, 0.6, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient incomeIconGradient = LinearGradient(
      colors: [blue, accentPurple, accentPurple],
      stops: [0, 0.6, 1],
      transform: GradientRotation(pi * 45 / 180));

  static Gradient spendGradient = LinearGradient(colors: [
    redPurple.withOpacity(0.1),
    redOrange.withOpacity(0.1),
    redOrange.withOpacity(0.1)
  ], stops: const [
    0,
    0.6,
    1
  ], transform: const GradientRotation(pi * 120 / 180));

  static const Gradient spendIconGradient = LinearGradient(
      colors: [redPurple, redOrange, redOrange],
      stops: [0, 0.6, 1],
      transform: GradientRotation(pi * 120 / 180));
}
