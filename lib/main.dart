import 'package:flutter/material.dart';

import 'screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChildOn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashSecond(),
    );
  }
}

