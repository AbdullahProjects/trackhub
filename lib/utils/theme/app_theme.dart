import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_themes.dart';
import 'custom_themes/elevated_button_themes.dart';
import 'custom_themes/text_form_field_themes.dart';
import 'custom_themes/text_themes.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextThemes.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonThemes.lightElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldThemes.lightInputDecorationTheme,
    checkboxTheme: AppCheckboxThemes.lightCheckboxTheme,
    appBarTheme: AppBarThemes.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
  );
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextThemes.dartTextTheme,
    elevatedButtonTheme: AppElevatedButtonThemes.darkElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldThemes.darkInputDecorationTheme,
    checkboxTheme: AppCheckboxThemes.darkCheckboxTheme,
    appBarTheme: AppBarThemes.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
  );
}