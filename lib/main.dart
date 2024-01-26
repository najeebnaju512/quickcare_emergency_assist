import 'package:flutter/material.dart';
import 'package:quickcare_emergency_assist/views/loginSignup/loginSignup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuickCare ',
       theme: isDark == true ? ThemeData.dark() : ThemeData.light(),
      home: LoginSignUp(),
    );
  }
}

