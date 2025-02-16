import 'package:flutter/material.dart';
import 'package:gradproject/feature/home/prasntation/widget/const.dart';
import 'package:gradproject/feature/onbording/pages/onbording_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => OnbordingScreen(),));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: color6,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash2.png',
            width: 200,),
            Text('Dream House',
            style: TextStyle(
              color: color1,
              fontFamily: 'Satisfy',
              fontSize: 24
            ),),
          ],
        ),
      ),
    );
  }
}