import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';
import 'package:quickcare_emergency_assist/view/login/otp_genrate.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: height * .5,
              width: width * .9,
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: ColorTheme.black,
                      offset: const Offset(0.6, 2.0),
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text(
                      "Get Started",
                      style: GoogleFonts.ptSerif(
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: ColorTheme.drkBlue),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Form(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            maxLines: 1,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person_2_outlined,
                                  color: ColorTheme.red,
                                ),
                                labelText: "User Name",
                                labelStyle: GoogleFonts.prompt(
                                    color: ColorTheme.drkBlue,
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic),
                                filled: true,
                                fillColor: ColorTheme.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            maxLines: 1,
                            maxLength: 10,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: ColorTheme.red,
                                ),
                                labelText: "Phone Number",
                                labelStyle: GoogleFonts.prompt(
                                    color: ColorTheme.drkBlue,
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic),
                                filled: true,
                                fillColor: ColorTheme.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => OtpGen()));
                            },
                            child: Center(
                              child: Text(
                                "Get OTP",
                                style: GoogleFonts.merriweather(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: ColorTheme.red,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorTheme.drkBlue,
                                minimumSize: Size(88, 60),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
