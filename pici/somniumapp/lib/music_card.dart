import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({super.key});

  @override
  Widget build(BuildContext context) {
    double sizewidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: sizewidth,
            height: sizeHeight * 0.33,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/musicpicture.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Umirite se i zaspite",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Brza preporuka",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/play_button2.png",
                    fit: BoxFit.cover,
                    width: 82,
                    height: 82,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
