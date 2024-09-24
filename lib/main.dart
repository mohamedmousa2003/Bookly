import 'package:book_app/features/const.dart';
import 'package:book_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      title: 'BookApp',
      home: SplashView(),
    );
  }
}

// package download
//? get
