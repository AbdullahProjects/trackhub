import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackhub/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TrackHub',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.dartTheme,
      home: const Scaffold(body: Center(child: Text("Application Started!"),),),
    );
  }
}

