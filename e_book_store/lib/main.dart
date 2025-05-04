import 'package:e_book_store/config/themes.dart';
import 'package:e_book_store/pages/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E BOOK',
      theme: lightTheme,
      home: const WelcomePage(),
    );
  }
}

