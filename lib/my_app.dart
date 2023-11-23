import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surprise_test/screen/login_page.dart';
import 'package:surprise_test/utils/app_color/app_color.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: StateBindings(),
      title: 'Surprise App',
      theme: ThemeData(
          primarySwatch:
              MaterialColor(AppColor.primaryColor.value, AppColor().color),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              textStyle: const TextStyle(
                fontSize: 24,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
              padding: const EdgeInsets.symmetric(vertical: 4),
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const LoginPage(),
    );
  }
}
