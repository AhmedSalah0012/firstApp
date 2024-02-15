import 'package:firstapp/RoutAppOne/courseDetails.dart';
import 'package:firstapp/RoutAppOne/routCourses.dart';
import 'package:firstapp/RoutAppOne/splahScreen.dart';
import 'package:firstapp/facebook/homepage.dart';
import 'package:flutter/material.dart';

import 'contactapp/contactscreen.dart';
import 'facebook/loginScreen.dart';

class AppRoute extends StatelessWidget{
  const AppRoute({super.key});
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: ContactScreen.routname,
     routes:{
       LoginScreen.routName:(context)=>LoginScreen()
       ,HomePage.routName:(context)=>HomePage()
       ,RoutCousres.routName:(context)=>RoutCousres(),
       CourseDetails.routName:(context)=>CourseDetails(),
       SplashScreen.routname:(context)=>SplashScreen(),
       ContactScreen.routname:(context)=>ContactScreen()
     }
   );
  }

}