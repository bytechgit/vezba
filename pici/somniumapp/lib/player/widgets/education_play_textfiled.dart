// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationPlayerTextField extends StatelessWidget {
  const EducationPlayerTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double fontSize;

    if (screenWidth < 600) {
      fontSize = 8;
    } else {
      fontSize = 10.0;
    }
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(23, 28, 69, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, left: 10, bottom: 5, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Napiši svoj utisak",
              style: GoogleFonts.redHatDisplay(
                  color: const Color.fromRGBO(239, 239, 239, 1),
                  textStyle: const TextStyle(letterSpacing: 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Container(
                height: 44,
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(242, 242, 242, 0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    hintText:
                        "Podeli svoj utisak, tvoje mišljenje nam je bitno...",
                    hintStyle: GoogleFonts.redHatDisplay(
                        textStyle: const TextStyle(
                          letterSpacing: 1,
                        ),
                        color: const Color.fromRGBO(172, 172, 172, 1),
                        fontSize: fontSize,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
