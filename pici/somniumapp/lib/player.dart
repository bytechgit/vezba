import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:somniumapp/body_player.dart';
import 'package:somniumapp/play.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  List<String> images = [
    // "assets/player_background.png",
    //"assets/player_background2.png"
    "assets/player_background3.png"
  ];
  List<PaletteColor?> colors = [];
  final int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _updatePalette();
  }

  Future<void> _updatePalette() async {
    for (String image in images) {
      final PaletteGenerator generator =
          await PaletteGenerator.fromImageProvider(
        AssetImage(image),
        size: const Size(50, 100),
      );

      colors.add(generator.lightMutedColor ?? PaletteColor(Colors.blue, 2));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //print(colors);
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Positioned.fill(
          bottom: size.height * 0.2,
          child: const BodyPlayer(),
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
          top: 50,
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
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Play(
            boja: colors.isNotEmpty
                ? colors[_currentIndex]?.color ?? Colors.white
                : Colors.white,
          ),
        ),
      ]),
    );
  }
}
