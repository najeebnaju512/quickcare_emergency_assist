import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../model/static_db.dart';

import '../../../utils/colors.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: GoogleFonts.lora(
                color: ColorTheme.black,
                fontSize: height * .03,
                fontWeight: FontWeight.w500),
          ),
          titleSpacing: 1,
          centerTitle: true,
          backgroundColor: ColorTheme.l8Blue.withOpacity(.6),
          toolbarHeight: height * .09,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
        ),
        body: Column(
          children: [
            Card(
              color: ColorTheme.red.withOpacity(.2),
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 15, bottom: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                    2.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          child: CircleAvatar(
                            maxRadius: width * .15,
                            backgroundImage:
                                AssetImage(StaticDb.profileDetails['image']),
                          ),
                        ),
                        SizedBox(width: 25,),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              Text(
                                StaticDb.profileDetails['username'],
                                style: GoogleFonts.lora(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    color: ColorTheme.drkBlue),
                              ),
                              Text(StaticDb.profileDetails['phoneno'],
                                  style: GoogleFonts.lora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ColorTheme.black)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      buildListTile(Icons.privacy_tip_outlined, "Privacy"),
                      buildListTile(Icons.help_outline, "Help&Support"),
                      buildListTile(Icons.settings, "Settings"),
                      buildListTile(Icons.share, "Share"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildListTile(IconData iconname, String title) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titleAlignment: ListTileTitleAlignment.center,
          tileColor: Colors.white38,
          leading: Icon(iconname, size: 18),
          title: Text(
            title,
            style: GoogleFonts.robotoSlab(
                fontSize: 16, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
