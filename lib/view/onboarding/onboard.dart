import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
import '../../controller/onbrd_controller.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  Future<void> fetchdata(context) async {
    await Provider.of<OnboardController>(context, listen: false).fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    PageController pageController = PageController();
    fetchdata(context);
    return Scaffold(
      body: SafeArea(child: Consumer<OnboardController>(
        builder: (context, onControl, child) {
          return PageView.builder(
              controller: pageController,
              itemCount: onControl.contents.length,
              itemBuilder: (context, int) => Stack(
                children: [
                  Container(
                    height: _height,
                    width: _width,
                    child: Center(
                      child: Container(
                        child: LottieBuilder.asset(
                            onControl.contents[int].asset??""),
                      ),
                    ),
                  )
                ],
              ));
        },
      )),
    );
  }
}
