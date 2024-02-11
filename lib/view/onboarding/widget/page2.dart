import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/colors.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Stack(
        children: [
          Container(
            height: _height,
            width: _width,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: LottieBuilder.asset("assets/animation/intro2.json"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
              //   gradient: LinearGradient(
              //       colors: [
              //         AppTheme.accentColor2,
              //         AppTheme.accentColor3,
              //       ],
              //   //   gradient: LinearGradient(
              //   // colors: [
              //   //   AppTheme.secondaryColor,
              //   //   AppTheme.primaryColor,
              //   // ],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomCenter,
              // )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick Access, Quick Response',
                    style: GoogleFonts.lobster(
                        color: ColorTheme.drkBlue,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'User-Friendly Interface',
                    style: GoogleFonts.teko(
                        fontSize: 18.0,
                        color: ColorTheme.drkBlue,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "QuickCare: Simple, user-friendly design for easy navigation. Get assistance with a few taps for medical emergencies or urgent help from authorities instantly.",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.prompt(
                      fontSize: 16.0,
                      color: ColorTheme.l8Blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
