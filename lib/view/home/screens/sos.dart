import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quickcare_emergency_assist/controller/sos_cntrol.dart';
import 'package:quickcare_emergency_assist/model/static_db.dart';

import '../../../utils/colors.dart';

class SosScreen extends StatelessWidget {
  const SosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        //nearby helps
        appBar: AppBar(
          title: Text(
            "Nearby Assistance",
            style: GoogleFonts.lora(
                color: ColorTheme.black,
                fontSize: height * .03,
                fontWeight: FontWeight.w500),
          ),
          titleSpacing: 1,
          centerTitle: true,
          backgroundColor: ColorTheme.red.withOpacity(.8),
          toolbarHeight: height * .09,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
        ),
        body: ListView(
          children: [
            Consumer<SosCntrol>(
              builder: (context, sosCntl, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //district dropdown
                    Container(
                      width: width * .4,
                      padding: EdgeInsets.all(8),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton<String>(
                        padding: EdgeInsets.all(5),
                        // isDense: true,
                        isExpanded: true,
                        value: sosCntl.districtSelected,
                        // districtSelected, // Set the initially selected value, or null if no value is selected initially
                        hint: Text("Select District"),
                        onChanged: (String? selectedDistrict) {
                          // Handle when a district is selected
                          print('Selected District: $selectedDistrict');
                          sosCntl.setDistrict(selectedDistrict);
                          sosCntl.resetArea();
                        },
                        items: StaticDb.mainData.keys.map((String district) {
                          return DropdownMenuItem<String>(
                            value: district,
                            child: Text(district),
                          );
                        }).toList(),
                      ),
                    ),
                    //area dropdown
                    Container(
                        width: width * .4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: Consumer<SosCntrol>(
                          builder: (context, sosCntl, child) {
                            return DropdownButton<String>(
                              padding: EdgeInsets.all(5),
                              // isDense: true,
                              isExpanded: true,
                              value: sosCntl.areaSelected,
                              hint: Text("Select Place"),
                              onChanged: (String? selectedArea) {
                                print('Selected area: $selectedArea');
                                sosCntl.setArea(selectedArea);
                              },
                              items: sosCntl.districtSelected != null
                                  ? (StaticDb.mainData[
                                              sosCntl.districtSelected!] ??
                                          [])
                                      .map<DropdownMenuItem<String>>(
                                          (String place) {
                                      return DropdownMenuItem<String>(
                                        value: place,
                                        child: Text(place),
                                      );
                                    }).toList()
                                  : [],
                            );
                          },
                        )),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
