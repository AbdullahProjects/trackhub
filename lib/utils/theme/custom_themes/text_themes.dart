import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class AppTextThemes {
  AppTextThemes._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.textDark),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: AppColors.textDark),
    headlineSmall: TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.textDark),
    titleLarge: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.textDark),
    titleMedium: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.textDark),
    titleSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.textDark),
    bodyLarge: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.textDark),
    bodyMedium: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.textDark),
    bodySmall: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.textDark),
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: AppColors.textDark),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.textDark),
  );

  static TextTheme dartTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.textLight),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: AppColors.textLight),
    headlineSmall: TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.textLight),
    titleLarge: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.textLight),
    titleMedium: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.textLight),
    titleSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.textLight),
    bodyLarge: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.textLight),
    bodyMedium: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.textLight),
    bodySmall: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.textLight),
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.textLight),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.textLight),
  );
}
