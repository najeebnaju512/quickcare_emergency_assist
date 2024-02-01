import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/colors.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(200),
          bottomRight: Radius.circular(200)
        ),
        gradient: LinearGradient(
            colors: [
              AppTheme.accentColor2,
              AppTheme.accentColor3,
            ],
        //   gradient: LinearGradient(
        // colors: [
        //   AppTheme.secondaryColor,
        //   AppTheme.primaryColor,
        // ],
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
              'Swift Emergency Assistance',
              style: GoogleFonts.lobster(
                  color: AppTheme.neutralColor,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            SizedBox(height: 20.0),
            Text(
              'Your Lifeline in Urgency',
              style: GoogleFonts.teko(
                  fontSize: 18.0,
                  color: AppTheme.textColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome to QuickCare - your go-to app for immediate access to vital emergency services. Whether you need a hospital, an ambulance, police assistance, fire services, or a blood donor, QuickCare has you covered. Let\'s get started to ensure your safety and well-being.',
              textAlign: TextAlign.left,
              style: GoogleFonts.prompt(
                fontSize: 16.0,
                color:AppTheme.secondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
