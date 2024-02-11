import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
    return Stack(
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
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Localized Assistance',
                  style: GoogleFonts.lobster(
                      // color: AppTheme.neutralColor,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Help Where You Are',
                  style: GoogleFonts.teko(
                      fontSize: 18.0,
                      // color: AppTheme.textColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2),
                ),
                SizedBox(height: 20.0),
                Text(
              'QuickCare utilizes your location to provide real-time information about nearby hospitals, ambulance services, police stations, fire stations, and blood donation centers. Be assured that help is just a click away. Your safety matters, and QuickCare is here to ensure that vital services are easily accessible whenever you need them.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.prompt(
                    fontSize: 16.0,
                    // color:AppTheme.secondaryTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
