import 'package:app_de_ejercicio/screens/LogingScreen.dart';
import 'package:app_de_ejercicio/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

class AppExercise extends StatelessWidget {
 //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: LoginScreen(),
    );
  }
}