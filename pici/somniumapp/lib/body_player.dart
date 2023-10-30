import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyPlayer extends StatelessWidget {
  const BodyPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/player_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 11.0,
          top: 20,
          right: 11,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Laku noć!",
                  style: GoogleFonts.reenieBeanie(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              Center(
                child: ClipOval(
                  child: Stack(
                    children: <Widget>[
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(0.3),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.35,
                        child: // Center(
                            Center(
                          child: Image.asset(
                            "assets/avatar_background.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
