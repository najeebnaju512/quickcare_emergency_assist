import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          children: [
            Container(
              color: Colors.amberAccent,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.greenAccent,
            ),
          ],
        ),
        // dot indicator
        Container(
            alignment: Alignment(0, 0.8),
            child: SmoothPageIndicator(
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
            )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(onPressed: () {}, child: Text("Skip")),
            TextButton(onPressed: () {}, child: Text("Next")),
          ],
        )
      ],
    ));
  }
}
