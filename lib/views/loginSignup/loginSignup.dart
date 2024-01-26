import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/signinLogin.dart';

class LoginSignUp extends StatelessWidget {
  var isSignin;

  var name_cntrl = TextEditingController();

  var mail_cntrl = TextEditingController();

  var pass_cntrl = TextEditingController();

  var cpass_cntrl = TextEditingController();

  SigninLoginWidget _signinLoginWidget = SigninLoginWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: GoogleFonts.crimsonText(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange[600],
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.black45,
                              offset: Offset(5.0, 3.0),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "QUICKCARE: Your Lifeline! Emergency services, real-time location sharing, and customizable settings. Your Safety, Our Priority! Thank you for choosing QUICKCARE.",
                        style: GoogleFonts.cormorantGaramond(
                            // color: isDarkmode ? Colors.black : Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrange.withOpacity(0.9),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(5, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.elliptical(210, 90),
                        topLeft: Radius.elliptical(360, 120),
                        bottomRight: Radius.elliptical(210, 90)),
                    gradient:
                        LinearGradient(begin: Alignment.bottomLeft, colors: [
                      Colors.red[900]!,
                      Colors.red[500]!,
                      Colors.orange[500]!,
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _signinLoginWidget.signButton(
                        "SignIn", context, isSignin = true),
                    SizedBox(
                      height: 10,
                    ),
                    _signinLoginWidget.signButton(
                        "SignUp", context, isSignin = false),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Continue with social media",
                      style:
                          GoogleFonts.lora(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
