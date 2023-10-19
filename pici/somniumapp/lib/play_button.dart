import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 170,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(217, 217, 217, 1),
                ]),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "Gledaj odmah",
                style: GoogleFonts.redHatDisplay(
                    color: const Color.fromRGBO(31, 26, 87, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(236, 167, 44, 1),
                    Color.fromRGBO(188, 121, 2, 1),
                  ]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              "assets/play.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
