import 'package:shopping_app/loginfile/profile.dart';
import 'package:shopping_app/loginfile/registerpage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class Otppage extends StatefulWidget {
  const Otppage({super.key});

  @override
  State<Otppage> createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
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
              "OTP Verification",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text("OTP send to your ", style: TextStyle(fontSize: 16)),
            Text("E-mail", style: TextStyle(fontSize: 16)),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 70,right: 70),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  inactiveColor: const Color.fromARGB(255, 2, 36, 82),
                  fieldHeight: 60,
                  fieldWidth: 60
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4,bottom: 6),
              child: Text("00.28"),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 10),
              child: Text(
                "Didn’t receive a OTP? Resend OTP",
                style: TextStyle(fontSize: 15),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 13),
                  backgroundColor: const Color.fromARGB(255, 2, 36, 82),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profilepage()),
                  );
                },
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
