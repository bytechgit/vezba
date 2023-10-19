import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:somniumapp/play_button.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/caffe.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 12, right: 12, top: 50, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Do kada smeš piti',
                style: GoogleFonts.redHatDisplay(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(
                    text: ' kafu ',
                    style: GoogleFonts.redHatDisplay(
                        color: const Color.fromRGBO(236, 167, 44, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: '\na da ne ometa tvoj \nsan?',
                    style: GoogleFonts.redHatDisplay(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "Trajanje: min",
              style: GoogleFonts.redHatDisplay(
                  color: const Color.fromRGBO(197, 197, 197, 1),
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 25,
            ),
            const PlayButton(),
          ],
        ),
      ),
    );
  }
}
