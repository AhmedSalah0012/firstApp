import 'package:firstapp/RoutAppOne/components/couresmodel.dart';
import 'package:firstapp/RoutAppOne/courseDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cardModel.dart';

class CourseName extends StatelessWidget {
  CardModel cardModel;
  int index;

CourseName({super.key, required this.cardModel,required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(margin: EdgeInsets.only(right: 10,left: 10,top: 10),
            child: Image.asset(cardModel.path)),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              primary: Color(0xff104ad2), // Background color
            ),
            onPressed: () {
              Navigator.pushNamed(context, CourseDetails.routName,arguments:
                  CoursesModel( path: cardModel.path, index: index,)
              );
            },
            child:  Text(
              cardModel.title,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
