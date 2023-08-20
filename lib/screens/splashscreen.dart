import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        minimum: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: Text(
                "The Power Zone",
                style: TextStyle(
                  fontSize: 30,
                  fontco
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            Lottie.asset('assets/raw/splash1.json', height: 320, width: 350),
            Lottie.asset('assets/raw/splash2.json', height: 320, width: 350),
          ],
        ),
      ),
    );
  }
}
