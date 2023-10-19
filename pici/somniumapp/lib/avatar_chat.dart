import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarChat extends StatelessWidget {
  const AvatarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 155,
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: LayoutBuilder(builder: (context, c) {
              return Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(23, 28, 68, 1),
                ),
                child: SizedBox(
                  width: c.maxWidth * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "“Hej, primetila sam da imaš problem\n sa konzumiranjem kafe. Pogledaj ovaj\n video!”",
                      style: GoogleFonts.reenieBeanie(
                          color: const Color.fromRGBO(236, 167, 44, 1),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              );
            }),
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 15.0,
              ),
              child: Image.asset(
                'assets/avatar_caffe.png',
                width: 110,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 105,
            left: 20,
            child: Container(
              width: 48,
              height: 48,
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
              child: Column(
                children: [
                  Image.asset(
                    "assets/chat.png",
                    width: 60,
                    height: 30,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Chat-uj sada",
                    style: GoogleFonts.redHatDisplay(
                        color: const Color.fromRGBO(31, 26, 87, 1),
                        fontSize: 6,
                        fontWeight: FontWeight.w700),
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
