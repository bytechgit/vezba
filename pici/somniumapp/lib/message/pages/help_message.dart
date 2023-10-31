import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/music_message.dart';

class HelpMessage extends StatelessWidget {
  const HelpMessage({super.key});

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
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
          child: Column(
            children: [
              Container(
                height: 3,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(236, 167, 44, 1),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "I can detect your bad habbits and give you education how to solv them an easy way!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.reenieBeanie(
                      color: const Color.fromRGBO(236, 167, 44, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                flex: 5,
                child: Image.asset(
                  "assets/help_avatar.png",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MusicMessage()));
                        },
                        child: Container(
                          height: 55,
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
                              "I understand",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.redHatDisplay(
                                  color: const Color.fromRGBO(31, 26, 87, 1),
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
      )),
    );
  }
}
