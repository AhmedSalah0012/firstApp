import 'package:firstapp/facebook/homepage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routName = "LoginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3b5999),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                // Adjust the radius as needed
                child: Image.asset(
                  "assets/images/facelogo.png",
                  // You can add additional properties for the image here
                  width: 100, // Set width as needed
                  height: 100, // Set height as needed
                  fit: BoxFit.cover, // Set the BoxFit property as needed
                )),
            const TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'Email or Phone',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  primary: Color(0xff496298), // Background color
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.routName);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Spacer(),
            const Text("Sign up for facebook",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center),
            const Text("forget password?",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
