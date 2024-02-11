import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';
import 'package:quickcare_emergency_assist/view/login/login.dart';
import 'package:quickcare_emergency_assist/view/onboarding/widget/page1.dart';
import 'package:quickcare_emergency_assist/view/onboarding/widget/page2.dart';
import 'package:quickcare_emergency_assist/view/onboarding/widget/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controller/onbrd_controller.dart';

class Onboard extends StatefulWidget {
  Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  PageController _pageCntrl = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Consumer<OnboardController>(
        builder: (context, onControl, child) {
          return Stack(
            children: [
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        _pageCntrl.jumpToPage(2);
                      },
                      child: Text(
                        "Skip>>",
                        style: GoogleFonts.merriweather(
                            color: ColorTheme.red, fontWeight: FontWeight.w700),
                      )),
                ],
              ),
              PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageCntrl,
                children: <Widget>[Page1(), Page2(), Page3()],
              ),
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
                                // color: AppTheme.primaryColor,
                                fontWeight: FontWeight.w700),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
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
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              )
            ],
          );
        },
      )),
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
