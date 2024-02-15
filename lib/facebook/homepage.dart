import 'package:firstapp/facebook/components/facePoste.dart';
import 'package:firstapp/facebook/components/faceStates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routName = "Homepage";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return faceStates();
                }),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return FaceBookBoste();
            }),
          ),
        ],
      ),
    );
  }
}
