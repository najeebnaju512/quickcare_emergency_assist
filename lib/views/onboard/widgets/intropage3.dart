import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
              ),
          gradient: LinearGradient(
            colors: [
              AppTheme.accentColor2,
              AppTheme.accentColor3,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          )),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Localized Assistance',
              style: GoogleFonts.lobster(
                  color: AppTheme.neutralColor,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            SizedBox(height: 20.0),
            Text(
              'Help Where You Are',
              style: GoogleFonts.teko(
                  fontSize: 18.0,
                  color: AppTheme.textColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
            SizedBox(height: 20.0),
            Text(
              'QuickCare utilizes your location to provide real-time information about nearby hospitals, ambulance services, police stations, fire stations, and blood donation centers. Be assured that help is just a click away. Your safety matters, and QuickCare is here to ensure that vital services are easily accessible whenever you need them.',
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
