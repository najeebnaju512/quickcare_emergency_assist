import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';
import 'package:quickcare_emergency_assist/view/home/startScrn.dart';

import 'widget/otpbox.dart';

class OtpGen extends StatefulWidget {
  const OtpGen({super.key});

  @override
  State<OtpGen> createState() => _OtpGenState();
}

class _OtpGenState extends State<OtpGen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Stack(
          children: [
            Form(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Container(
                height: height,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'Verification code ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n\nWe have sent the varification code to',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: '\n\n+91 99****8898',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: ColorTheme.drkBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OtpBox(),
                          OtpBox(),
                          OtpBox(),
                          OtpBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
            Positioned(
              bottom: height/39,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                height: 55,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // print(height);
                        // print(width);
                      },
                      child: Center(
                        child: Text(
                          "Resend",
                          style: GoogleFonts.merriweather(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: ColorTheme.drkBlue,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.white,
                          fixedSize: Size(150, 55),
                          minimumSize: Size(88, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => ScreenStart()));
                      },
                      child: Center(
                        child: Text(
                          "Verify",
                          style: GoogleFonts.merriweather(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: ColorTheme.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.drkBlue,
                          fixedSize: Size(150, 55),
                          minimumSize: Size(88, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
