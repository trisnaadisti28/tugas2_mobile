// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugas_materi_1/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ); // Material App
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.grey,
      splash: Column(
        children: [
          Image.asset(
            "assets/images/Logo.png",
            height: 150,
            width: 150,
          ),
          SizedBox(height: 40),
          Text(
            "TUGAS 2",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
      nextScreen: const LoginPage(),
      splashIconSize: 250,
      duration: 1000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
