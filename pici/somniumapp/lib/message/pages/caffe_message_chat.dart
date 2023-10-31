import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaffeMessageChat extends StatelessWidget {
  const CaffeMessageChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: SizedBox(
            height: 180,
            child: Stack(
              children: [
                SizedBox(
                  height: 150,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 100,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(23, 28, 68, 1),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 5,
                        top: 30,
                      ),
                      child: Expanded(
                        flex: 3,
                        child: Text(
                          "“Hej, primetila sam da imaš problem\n sa konzumiranjem kafe. Pogledaj ovaj\n video!”",
                          style: GoogleFonts.reenieBeanie(
                              color: const Color.fromRGBO(236, 167, 44, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/avatar_caffe.png',
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 130,
                  left: 20,
                  child: Container(
                    width: 50,
                    height: 50,
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
          ),
        ),
      ),
    );
  }
}
