import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:quickcare_emergency_assist/controller/location_cntrl.dart';
import 'package:quickcare_emergency_assist/controller/onbrd_controller.dart';
import 'package:quickcare_emergency_assist/view/onboarding/onboard.dart';

import 'controller/bottomnav_cntrl.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.grey));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LocationController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QuickCare ',
        theme: isDark == true ? ThemeData.dark() : ThemeData.light(),
        home: Onboard(),
      ),
    );
  }
}
