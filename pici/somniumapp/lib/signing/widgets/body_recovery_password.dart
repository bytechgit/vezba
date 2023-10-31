import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/somnium_textfield.dart';
import 'package:somniumapp/signing/pages/verify_email.dart';

class BodyRecoveryPassword extends StatefulWidget {
  const BodyRecoveryPassword({super.key});

  @override
  State<BodyRecoveryPassword> createState() => _BodyRecoveryPasswordState();
}

class _BodyRecoveryPasswordState extends State<BodyRecoveryPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(241, 241, 241, 1),
              Color.fromRGBO(255, 255, 255, 1),
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot your password",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.redHatDisplay(
                          color: const Color.fromRGBO(49, 49, 49, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Please enter the E-mail adress you’d like your password reset information sent to",
                      style: GoogleFonts.redHatDisplay(
                          color: const Color.fromRGBO(49, 49, 49, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: SomniumTextField(
                  title: "E-mail Address",
                  hintText: "info@bytech.rs",
                  prefixIcon: "assets/message.png"),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyEmail()));
                      },
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(31, 26, 87, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Send",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.redHatDisplay(
                                color: const Color.fromRGBO(233, 233, 233, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
