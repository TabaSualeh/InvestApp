// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:investapp/screens/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), toTheSignUpPage);
    super.initState();
  }

  void toTheSignUpPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Signup(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        image: AssetImage("assets/splash.png"),
        width: 139,
        height: 92,
      )),
    );
  }
}
