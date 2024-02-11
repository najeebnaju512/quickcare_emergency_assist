import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                    child: LottieBuilder.asset("assets/animation/intro3.json"),
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
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Localized Assistance',
                    style: GoogleFonts.lobster(
                        color: ColorTheme.drkBlue,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Help Where You Are',
                    style: GoogleFonts.teko(
                        fontSize: 18.0,
                        color: ColorTheme.drkBlue,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "QuickCare uses your location for real-time info on nearby hospitals, ambulances, police, fire stations, and blood donation centers. Help is just a click away, ensuring your safety with easy access to vital services.",
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
