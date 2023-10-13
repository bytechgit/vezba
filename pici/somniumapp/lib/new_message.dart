import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 20,
              child: Stack(alignment: Alignment.center, children: [
                Image.asset(
                  "assets/message_avatar.png",
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 100,
                    left: 0,
                    child: Image.asset("assets/new_message.png")),
              ]),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Column(
                  //    mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                          "I am ready",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.redHatDisplay(
                              color: const Color.fromRGBO(31, 26, 87, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
