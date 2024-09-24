import 'package:book_app/features/const.dart';
import 'package:book_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.config(enableLog: false); // Disable logs from GetX
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      title: 'BookApp',
      home: const SplashView(),
    );
  }
}

// package download
//? get
//? font_awesome_flutter (Icon)
