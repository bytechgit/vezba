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
              Flexible(
                flex: 7,
                child: Text(
                  "Laku noć!",
                  style: GoogleFonts.reenieBeanie(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              Expanded(
                  flex: 2,
                  child: Center(
                    child: ClipRect(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Stack(
                          children: <Widget>[
                            BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 5,
                                sigmaY: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent.withOpacity(0.3),
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                "assets/pp.png",
                                width: 80,
                                height: 80,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
