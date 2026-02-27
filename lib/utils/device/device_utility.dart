import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeviceUtility {
  DeviceUtility._();

  static double getScreenHeight() {
    return Get.height;
  }

  static double getScreenWidth() {
    return Get.width;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }
  
  static double getAppBarHeight() {
    return kToolbarHeight;
  }
}