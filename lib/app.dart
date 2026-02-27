import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackhub/features/onboarding/views/SplashScreen.dart';
import 'package:trackhub/utils/bindings/app_bindings.dart';
import 'package:trackhub/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TrackHub',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.dartTheme,
      initialBinding: AppBindings(),
      home: const Scaffold(body: SplashScreen()),
    );
  }
}

