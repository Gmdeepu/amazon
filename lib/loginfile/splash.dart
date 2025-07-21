import 'dart:async';
import 'package:shopping_app/loginfile/loginpage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    Timer(Duration(seconds: 2),(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()
        ));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsetsGeometry.directional(top: 310),
              child: Container(
                width: 230,
                height: 230,
                child: Image.asset("assets/HUMEIRA COMPUTERS_page-0004 1.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
