import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:somniumapp/sleep_message.dart';

class BodyVerifyEmail extends StatefulWidget {
  const BodyVerifyEmail({super.key});

  @override
  State<BodyVerifyEmail> createState() => _BodyVerifyEmailState();
}

class _BodyVerifyEmailState extends State<BodyVerifyEmail> {
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 30),
                child: Text(
                  "Please verify your E-mail",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.redHatDisplay(
                      color: const Color.fromRGBO(49, 49, 49, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "You’re almost there! We sent an E-mail to you.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.redHatDisplay(
                        color: const Color.fromRGBO(49, 49, 49, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'Just click on the link in that E-mail to complite your\n signup. If you don’t see it, you may need to  ',
                      style: GoogleFonts.redHatDisplay(
                          color: const Color.fromRGBO(49, 49, 49, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'check your\nspam ',
                          style: GoogleFonts.redHatDisplay(
                              color: const Color.fromRGBO(236, 167, 44, 1),
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: 'folder.',
                          style: GoogleFonts.redHatDisplay(
                              color: const Color.fromRGBO(49, 49, 49, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Still can’t find the E-mail? No problem.\n Contact info@bytech.rs.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.redHatDisplay(
                        color: const Color.fromRGBO(49, 49, 49, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SleepMessage()));
                    },
                    child: Container(
                      height: 57,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 26, 87, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Resend Verification E-mail",
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
          ],
        ),
      ),
    );
  }
}
