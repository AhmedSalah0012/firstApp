import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class faceStates extends StatelessWidget {
  const faceStates({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 70,
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                // Adjust the radius as needed
                child: Image.asset("assets/images/facebookStory.jpg")),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 15,
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "owner",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))
          ],
        ));
  }
}
