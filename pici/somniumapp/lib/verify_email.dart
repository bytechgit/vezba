import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:somniumapp/body_verify_email.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            padding: const EdgeInsets.only(top: 45.0),
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Verify Email!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.reenieBeanie(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(236, 167, 44, 1),
                            fontSize: 90,
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
                  flex: 4,
                  child: Image.asset(
                    "assets/avatar_verify_email.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Expanded(flex: 6, child: BodyVerifyEmail()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
