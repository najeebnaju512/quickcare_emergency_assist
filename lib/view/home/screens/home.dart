import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';
import 'package:quickcare_emergency_assist/view/home/widget/homeCard.dart';
import 'package:quickcare_emergency_assist/view/home/widget/listGenerate.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> homecard = [
      {
        'title': 'Hospital',
        'asset': "assets/images/hsptl.jpg"
        // 'data':
      },
      {
        'title': 'Police',
        'asset': "assets/images/police.jpg"
        // 'data':
      },
      {
        'title': 'Fire & Safty',
        'asset': "assets/images/fire&safty.jpg"
        // 'data':
      },
      {
        'title': 'Blood Bank',
        'asset': "assets/images/bloodbnk.jpg"
        // 'data':
      },
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "We are here for you",
                style: GoogleFonts.lora(
                    color: ColorTheme.black,
                    fontSize: height * .03,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
            ),
            titleSpacing: 1,
            // centerTitle: true,
            toolbarHeight: height * .09,
            backgroundColor: ColorTheme.redaccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView(
              children: [
                Text(
                  "Nearby Assistance",
                  style: GoogleFonts.lora(
                      color: ColorTheme.drkBlue,
                      fontSize: height * .025,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: height * .46,
                  width: width * .95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red.withOpacity(.2)),
                  child: GridView.builder(
                    itemCount: 4,
                    padding: EdgeInsets.all(3),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return homeCard(
                          homecard[index]['title'], homecard[index]['asset']);
                    },
                  ),
                )
              ],
            ),
          ))),
    );
  }
}


