import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackhub/features/auth/views/login/LoginScreen.dart';
import 'package:trackhub/features/onboarding/views/OnboardingPage.dart';
import 'package:trackhub/utils/constants/app_colors.dart';
import 'package:trackhub/utils/constants/app_images.dart';
import 'package:trackhub/utils/device/device_utility.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _navigateToLogin();
    });
    super.initState();
  }

  void _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    // Get.offAll(LoginScreen());
    Get.offAll(OnboardingPage());
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(AppImages.completeAppLogo, width: DeviceUtility.getScreenWidth() * 0.4,),
      ),
    );
  }
}
