import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/signing/pages/sign_in.dart';
import 'package:somniumapp/signing/pages/sign_up.dart';

class SomniumHomePage extends StatefulWidget {
  const SomniumHomePage({super.key});

  @override
  State<SomniumHomePage> createState() => _SomniumHomePageState();
}

class _SomniumHomePageState extends State<SomniumHomePage> {
  bool isSecondImageVisible = false;

  @override
  void initState() {
    super.initState();
    // Nakon 5 sekundi, postavite isSecondImageVisible na 'true'.
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isSecondImageVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(31, 26, 87, 1),
                  Color.fromRGBO(4, 7, 37, 1),
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20),
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Welcome,\nlet’s get started!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.reenieBeanie(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(236, 167, 44, 1),
                            fontSize: 55,
                          ),
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 0.8,
                          sigmaY: 0.8,
                        ),
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/avatar.png",
                        width: 165,
                        height: 165,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/logo.png",
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: Center(
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(236, 167, 44, 1),
                                Color.fromRGBO(188, 121, 2, 1),
                              ]),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.redHatDisplay(
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(31, 26, 87, 1),
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Already have an account? - ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.redHatDisplay(
                          fontWeight: FontWeight.w200,
                          color: const Color.fromRGBO(192, 192, 192, 1),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()));
                        },
                        child: Text(
                          "Log in",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(236, 167, 44, 1),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
