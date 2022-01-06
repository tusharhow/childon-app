import 'dart:async';
import 'package:childon/screens/homepage.dart';
import 'package:flutter/material.dart';

class SplashSecond extends StatefulWidget {
  const SplashSecond({Key? key}) : super(key: key);

  @override
  State<SplashSecond> createState() => _SplashSecondState();
}

class _SplashSecondState extends State<SplashSecond> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (c) => BottomNavigationBarScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade800,
      body: const Center(
        child: Image(
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}
