import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastService {
  ToastService._();

  /// Detect background color based on theme
  static Color _backgroundColor(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? Colors.black : Colors.white;
  }

  /// Detect text color based on theme
  static Color _textColor(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? Colors.white : Colors.black;
  }

  /// ==============================
  /// SUCCESS TOAST
  /// ==============================
  static void success(
      BuildContext context, {
        required String description,
      }) {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.topRight,
      backgroundColor: _backgroundColor(context),
      foregroundColor: _textColor(context),
      boxShadow: Theme.of(context).brightness == Brightness.light
          ? [
        const BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0, 4),
        )
      ]
          : null,
      description: Text(description),
    );
  }

  /// ==============================
  /// WARNING TOAST
  /// ==============================
  static void warning(
      BuildContext context, {
        required String description,
      }) {
    toastification.show(
      context: context,
      type: ToastificationType.warning,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.topRight,
      backgroundColor: _backgroundColor(context),
      foregroundColor: _textColor(context),
      boxShadow: Theme.of(context).brightness == Brightness.light
          ? [
        const BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0, 4),
        )
      ]
          : null,
      description: Text(description),
    );
  }

  /// ==============================
  /// ERROR TOAST
  /// ==============================
  static void error(
      BuildContext context, {
        required String description,
      }) {
    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(seconds: 4),
      alignment: Alignment.topRight,
      backgroundColor: _backgroundColor(context),
      foregroundColor: _textColor(context),
      boxShadow: Theme.of(context).brightness == Brightness.light
          ? [
        const BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0, 4),
        )
      ]
          : null,
      description: Text(description),
    );
  }

  /// ==============================
  /// CUSTOM SNACKBAR TOAST
  /// ==============================
  static void customSnackbar(
      BuildContext context, {
        required String description,
      }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          description,
          style: TextStyle(
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        backgroundColor: isDark ? Colors.black : Colors.white,
        behavior: SnackBarBehavior.floating,
        elevation: isDark ? 0 : 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}