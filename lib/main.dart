import 'package:flutter/material.dart';
import 'package:nabeel_test/login.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return const MaterialApp(
    title: "quiz app",
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),

  );
  }

}


