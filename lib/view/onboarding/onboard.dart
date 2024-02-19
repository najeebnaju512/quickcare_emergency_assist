import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quickcare_emergency_assist/controller/onbrd_controller.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';
import 'package:quickcare_emergency_assist/view/login/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widget/page_content.dart';

// ignore: must_be_immutable
class Onboard extends StatelessWidget {
  Onboard({Key? key}) : super(key: key);

  PageController _pageCntrl = PageController();

  @override
  Widget build(BuildContext context) {
    Provider.of<OnboardController>(context).fetchdata();
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 25,
            ),
            //page building
            pageContent(pageCntrl: _pageCntrl, height: _height, width: _width),
            //icons & buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // dot indicator
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: SmoothPageIndicator(
                        controller: _pageCntrl,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            dotColor: ColorTheme.drkBlue,
                            activeDotColor: ColorTheme.redaccent,
                            expansionFactor: 5),
                      ),
                    ),
                    bottonChanged(
                      context,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //navigation to login page
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.merriweather(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: ColorTheme.drkBlue,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.redaccent,
                          minimumSize: Size(60, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  bottonChanged(context) {
    return MaterialButton(
      onPressed: () {
        _pageCntrl.nextPage(
            duration: Duration(milliseconds: 500),
            curve: Easing.legacyAccelerate);
      },
      child: Container(
        height: 40,
        width: 150,
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
            color: ColorTheme.l8Blue),
        child: Center(
          child: Text(
            " Next ",
            style: GoogleFonts.merriweather(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: ColorTheme.drkBlue,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

