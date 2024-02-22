import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../utils/colors.dart';
import 'otp_genrate.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red[50],
        body: ListView(
          padding: EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          children: [
            SizedBox(height: 40,),
            Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: GoogleFonts.ptSerif(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: ColorTheme.drkBlue),
            ),
            LottieBuilder.asset("assets/animation/loginbK.json"),
            Form(
                child: Column(
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
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => OtpGen()));
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
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
