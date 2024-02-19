import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../controller/onbrd_controller.dart';
import '../../../utils/colors.dart';

class pageContent extends StatelessWidget {
  const pageContent({
    super.key,
    required PageController pageCntrl,
    required double height,
    required double width,
  }) : _pageCntrl = pageCntrl, _height = height, _width = width;

  final PageController _pageCntrl;
  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardController>(
      builder: (context, onbControl, child) {
        return PageView.builder(
            controller: _pageCntrl,
            itemCount: onbControl.contents.length,
            itemBuilder: (context, index) => Padding(
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
                                child: LottieBuilder.asset(onbControl
                                    .contents[index]["asset"]),
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                onbControl.contents[index]["title"],
                                style: GoogleFonts.lobster(
                                    color: ColorTheme.drkBlue,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                onbControl.contents[index]["subtitle"],
                                style: GoogleFonts.teko(
                                    fontSize: 18.0,
                                    color: ColorTheme.drkBlue,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                onbControl.contents[index]
                                    ["description"],
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
                ));
      },
    );
  }
}
