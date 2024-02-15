import 'dart:async';

import 'package:firstapp/RoutAppOne/routCourses.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routname = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds:2),(){
      Navigator.pushReplacementNamed(context, RoutCousres.routName);
    });

    return Scaffold(
      body: Container(
        child: Image.asset(
          "assets/images/splash_screen.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
