import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninLoginWidget {
  Widget signButton(String title, BuildContext context, bool isSignin) {
    return MaterialButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) =>
                isSignin ? signInDataInput(context) : signUpDataInput(context));
      },
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.9),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(5, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.red[900]!, Colors.red[400]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text(
            title,
            style: GoogleFonts.bitter(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget signInDataInput(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.merriweather(
                      color: Colors.red[500],
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text("Enter Valid Credentials here",
                    style: GoogleFonts.bitter(
                        letterSpacing: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.red[600])),
                SizedBox(
                  height: 15,
                ),
                //mail entry
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    // controller: mail_cntrl,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Email/Phone No",
                        labelStyle: GoogleFonts.lora(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //password entry
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    // controller: pass_cntrl,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          size: 16,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              size: 16,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Password",
                        labelStyle: GoogleFonts.lora(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(color: Colors.grey),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [Colors.red[900]!, Colors.red[300]!],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Text(
                            "SignIn",
                            style: GoogleFonts.bitter(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.grey),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpDataInput(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: GoogleFonts.merriweather(
                      color: Colors.red[500],
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text("Enter Valid Credentials here",
                    style: GoogleFonts.bitter(
                        letterSpacing: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.red[600])),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    // controller: name_cntrl,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          size: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "User Name",
                        labelStyle: GoogleFonts.lora(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //mail entry
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    // controller: mail_cntrl,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Email/Phone No",
                        labelStyle: GoogleFonts.lora(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //password entry
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    // controller: pass_cntrl,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          size: 16,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              size: 16,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Password",
                        labelStyle: GoogleFonts.lora(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //confirm password entry
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    // controller: cpass_cntrl,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          size: 16,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              size: 16,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Confirm Password",
                        labelStyle: GoogleFonts.lora(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Colors.red[900]!, Colors.red],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        "SignUp",
                        style: GoogleFonts.bitter(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
