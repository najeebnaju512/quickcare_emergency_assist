import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import 'listGenerate.dart';

class homeCard extends StatelessWidget {
  var imgpath;
  var title;
  homeCard(this.title, this.imgpath);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ListGenerate()));
      },
      child: Card(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(imgpath), fit: BoxFit.cover)),
            child: Text(
              title,
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.w500, color: ColorTheme.black),
            )),
      ),
    );
  }
}
