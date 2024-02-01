import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../loginSignup/loginSignup.dart';
import 'widgets/intropage1.dart';
import 'widgets/intropage2.dart';
import 'widgets/intropage3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/colors.dart';

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
  //keep track of last page
  // bool onLastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _pageCntrl,
          // onPageChanged: (index) {
          //   if (index == 2) {
          //     onLastpage = true;
          //   }
          // },
          children: [IntroPage1(), IntroPage2(), IntroPage3()],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bottonChanged(context),
            SizedBox(
              height: 15,
            ),
            // dot indicator
            SmoothPageIndicator(
              controller: _pageCntrl,
              count: 3,
              effect: ExpandingDotsEffect(
                  dotColor: Colors.white,
                  activeDotColor: Colors.black45,
                  expansionFactor: 5),
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
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.w700),
                    )),
                TextButton(
                    onPressed: () {
                      _pageCntrl.jumpToPage(2);
                    },
                    child: Text(
                      "Skip>>",
                      style: GoogleFonts.merriweather(
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.w700),
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

  bottonChanged(context) {
    if (_pageCntrl != 2) {
      return MaterialButton(
        onPressed: () {
          _pageCntrl.nextPage(
              duration: Duration(milliseconds: 500),
              curve: Easing.legacyAccelerate);
        },
        child: Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(2, 0),
                ),
              ],
              border: Border.all(color: Colors.white38, width: 2),
              borderRadius: BorderRadius.circular(15),
              color: AppTheme.accentColor2),
          child: Center(
            child: Text(
              " Next ",
              style: GoogleFonts.merriweather(
                  color: AppTheme.primaryColor, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      );
    } else {
      return MaterialButton(
        onPressed: () {
          //navigation to login page
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginSignUp()));
        },
        child: Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(2, 0),
                ),
              ],
              border: Border.all(color: Colors.white38, width: 5),
              borderRadius: BorderRadius.circular(15),
              color: AppTheme.secondaryColor),
          child: Center(
            child: Text(
              " Get Started ",
              style: GoogleFonts.merriweather(
                  color: AppTheme.accentColor, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      );
    }
  }
}
