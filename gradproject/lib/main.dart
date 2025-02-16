import 'package:flutter/material.dart';
import 'package:gradproject/feature/auth/presentation/screen/login_screen.dart';
import 'package:gradproject/feature/home/prasntation/widget/const.dart';
import 'package:gradproject/feature/onbording/pages/onbording_screen.dart';
import 'package:gradproject/feature/onbording/pages/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: color1,
      ),
      home:  SplashScreen(),
    );
  }
}
