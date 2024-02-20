import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quickcare_emergency_assist/controller/location_cntrl.dart';
import 'package:quickcare_emergency_assist/model/static_db.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';
import 'package:quickcare_emergency_assist/view/home/widget/homeCard.dart';

class HomeSceen extends StatelessWidget {
  HomeSceen({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    LocationController locationController =
        Provider.of<LocationController>(context);
    // locationController.fetchPosition();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "We are here to help",
                style: GoogleFonts.lora(
                    color: ColorTheme.black,
                    fontSize: height * .03,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500),
              ),
            ),
            centerTitle: true,
            backgroundColor: ColorTheme.l8Blue.withOpacity(.6),
            toolbarHeight: height * .09,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView(
              children: [
                Row(
                  children: [
                    Text(
                      "Nearby Assistance",
                      style: GoogleFonts.lora(
                          color: ColorTheme.drkBlue,
                          fontSize: height * .025,
                          fontWeight: FontWeight.w500),
                    ),
                    Consumer<LocationController>(
                      builder: (context, loc_cntrl, child) {
                        return Text(loc_cntrl.address);
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: height * .65,
                  width: width * .95,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red.withOpacity(.4)),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    padding: EdgeInsets.all(3),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      mainAxisExtent: height * .208,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return homeCard(StaticDb.homecard[index]['title'],
                          StaticDb.homecard[index]['asset']);
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
