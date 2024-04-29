import 'package:flutter/material.dart';
import 'package:whosthatdude/pages/home_screen.dart';
import 'package:whosthatdude/pages/image_display.dart';
import 'package:whosthatdude/pages/onboarding.dart';
import 'package:whosthatdude/pages/results.dart';
import 'package:whosthatdude/pages/success.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home':(context)=>HomePage(),
        '/display':(context)=>ImageDisplay(),
        '/success':(context)=>SuccessPage(),
        '/result':(context)=>ResultPage()

      },
      home: OnboardingScreen()
    );
  }
}

