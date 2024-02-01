import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(200), bottomLeft: Radius.circular(200)),
              gradient: LinearGradient(
            colors: [
              AppTheme.accentColor2,
              AppTheme.accentColor3,
            ],
          // gradient: LinearGradient(
          //   colors: [
          //     AppTheme.accentColor,
          //     AppTheme.neutralColor,
          //   ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quick Access, Quick Response',
              style: GoogleFonts.lobster(
                  color: AppTheme.neutralColor,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            SizedBox(height: 20.0),
            Text(
              'User-Friendly Interface',
              style: GoogleFonts.teko(
                  fontSize: 18.0,
                  color: AppTheme.textColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
            SizedBox(height: 20.0),
            Text(
              'QuickCare is designed with simplicity in mind. Easily navigate through our user-friendly interface to find and request assistance with just a few taps. Whether it\'s a medical emergency or you need urgent help from authorities, QuickCare ensures instant access to the right services when you need them the most.',
              textAlign: TextAlign.left,
              style: GoogleFonts.prompt(
                fontSize: 16.0,
                color: AppTheme.secondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
