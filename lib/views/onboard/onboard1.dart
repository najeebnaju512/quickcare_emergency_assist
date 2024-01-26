import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickcare_emergency_assist/views/onboard/widgets/intropage1.dart';
import 'package:quickcare_emergency_assist/views/onboard/widgets/intropage2.dart';
import 'package:quickcare_emergency_assist/views/onboard/widgets/intropage3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Onboarding(),
  ));
}

class Onboarding extends StatelessWidget {
  Onboarding({super.key});
  //controller to keep track on which page we are on
  PageController _pageCntrl = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        
        PageView(
          controller: _pageCntrl,
          children: [IntroPage1(), IntroPage2(), IntroPage3()],
        ),
        Container(
          alignment: Alignment(9, -9),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: GoogleFonts.merriweather(
                    color: Colors.white, fontWeight: FontWeight.w700),
              )),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            // dot indicator
            SmoothPageIndicator(
              controller: _pageCntrl,
              count: 3,
              // effect: SlideEffect(
              // dotColor: Colors.transparent, activeDotColor: Colors.white),
              effect: ExpandingDotsEffect(
                  dotColor: Colors.white,
                  activeDotColor: Colors.black45,
                  expansionFactor: 5),
              // effect: JumpingDotEffect(
              //     dotColor: Colors.grey, activeDotColor: Colors.white),
              // effect: SwapEffect(
              //     dotColor: Colors.grey, activeDotColor: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      _pageCntrl.previousPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    },
                    child: Text(
                      "< Previous",
                      style: GoogleFonts.merriweather(
                          color: Colors.lightBlue, fontWeight: FontWeight.w700),
                    )),
                TextButton(
                    onPressed: () {
                      _pageCntrl.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    },
                    child: Text(
                      "Next >",
                      style: GoogleFonts.merriweather(
                          color: Colors.redAccent, fontWeight: FontWeight.w700),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            )
          ],
        )
      ],
    ));
  }
}
