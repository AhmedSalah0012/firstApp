import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,leadingWidth: 75,
        leading: const Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.jpg"),
              radius: 20,
            )
          ],
        ),
        title: const Text(
          "Person",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.videocam_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body:  Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child:  Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person1.jpg"),
                  radius: 25,
                ),
                Container(
                  height: 80,
                  width: 270,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "This is My First Message",
                        hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 270,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "This is My Second Message",
                        hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400)),
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person2.jpg"),
                  radius: 25,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 270,
                  padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.attach_file,color: Colors.white,),
                        prefixIcon: const Icon(CupertinoIcons.smiley,color: Colors.white,),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Type a Message",
                        hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400)),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  foregroundColor: Colors.white,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.white, // Set the border color to white
                        width: 1.0, // Set the border width
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
