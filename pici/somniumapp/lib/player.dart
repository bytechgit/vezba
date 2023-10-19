import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/body_player.dart';
import 'package:somniumapp/play.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        const Positioned.fill(
          bottom: 0,
          child: BodyPlayer(),
        ),
        Positioned(
          bottom: 200,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(5, 7, 38, 0),
                    Color.fromRGBO(4, 7, 38, 1),
                  ],
                  stops: [
                    0.2,
                    1
                  ]),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(4, 7, 37, 1),
                    Color.fromRGBO(4, 7, 37, 0),
                  ]),
            ),
          ),
        ),
        Positioned(
          top: 30,
          child: Row(
            children: [
              Image.asset(
                "assets/back_button.png",
                width: 35,
                height: 35,
              ),
              Text(
                "Nazad",
                style: GoogleFonts.redHatDisplay(
                    color: const Color.fromRGBO(255, 255, 255, 0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Play(),
        ),
      ]),
    );
  }
}
