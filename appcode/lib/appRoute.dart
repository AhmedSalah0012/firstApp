import 'package:firstapp/homeScreen.dart';
import 'package:flutter/material.dart';

class AppRoute extends StatelessWidget{
  const AppRoute({super.key});
  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeScreen(),
   );
  }

}