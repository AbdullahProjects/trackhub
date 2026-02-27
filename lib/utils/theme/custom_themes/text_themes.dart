import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class AppTextThemes {
  AppTextThemes._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    titleLarge: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    bodyLarge: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: AppColors.black,
    ),
    labelLarge: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: AppColors.black,
    ),
  );

  static TextTheme dartTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    titleLarge: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
    bodyLarge: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    ),
    labelLarge: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    ),
  );
}
