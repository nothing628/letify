import 'package:flutter/material.dart';
import './colors.dart';

TextStyle? get titleStyle {
  return const TextStyle(
      color: AppColors.darkPurple,
      fontFamily: 'Raleway',
      fontSize: 18,
      fontWeight: FontWeight.w700);
}

TextStyle? get userWelcomeStyle {
  return const TextStyle(
      color: AppColors.darkPurple,
      fontFamily: 'Raleway',
      fontSize: 20,
      fontWeight: FontWeight.w800);
}
