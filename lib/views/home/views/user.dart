import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: UserScreen(),
//   ));
// }

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        titleTextStyle: GoogleFonts.teko(
          letterSpacing: 2,
          color: AppTheme.accentColor3,
            fontSize: 30, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
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
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "UserName",
                    style: GoogleFonts.robotoSlab(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
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
          leading: Icon(iconname, size: 25),
          title: Text(
            title,
            style: GoogleFonts.robotoSlab(
                fontSize: 20, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
