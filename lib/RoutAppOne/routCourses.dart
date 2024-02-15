import 'package:firstapp/RoutAppOne/components/courseName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/cardModel.dart';

class RoutCousres extends StatelessWidget {
  static const String routName = "routCourses";
  RoutCousres({super.key});
List<CardModel> card=[
  CardModel(path: "assets/images/Android.jpeg", title: "Android Course".toUpperCase()),

  CardModel(path: "assets/images/fullStack.jpeg", title: "iosCourse".toUpperCase()),

  CardModel(path: "assets/images/IOS.jpeg", title: "fullstack".toUpperCase()),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "RoutAppOne",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xff001f84),
        ),
        body:ListView.builder(itemCount: card.length,
            itemBuilder:(context,index){
          return CourseName(cardModel: card[index],index: index,);
        }));
  }
}
