import 'package:shopping_app/loginfile/registerpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'google.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final Googlelogin provider = Googlelogin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: ClipOval(child: Image.asset("assets/logo.png")),
              ),
            ),
            Text(
              "Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text("Welcome back!", style: TextStyle(fontSize: 16)),
            Text("Please enter your details", style: TextStyle(fontSize: 16)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17, bottom: 4),
                  child: Text(
                    "E-mail",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter your e-mail",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 14, bottom: 5),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 17, top: 5),
                  child: Text("Forgot Password?"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 168, vertical: 15),
                  backgroundColor: const Color.fromARGB(255, 2, 36, 82),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registerpage()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: InkWell(
                child: TextButton(
                  child: Text(
                    "Don’t have an account? Sign Up",
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () async {
                    print("Google Sign-In pressed");
                    final user = await provider.google();
                    if (user != null) {
                      print("Signed in as: ${user.user?.displayName}");
                      // Navigate to another page
                    } else {
                      print("Sign-in failed or cancelled");
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
