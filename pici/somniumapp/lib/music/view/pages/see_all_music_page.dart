import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/music/view/models/see_all_music_video.dart';

import 'package:somniumapp/music/view/widgets/composition_music.dart';

class SeeAllMusicPage extends StatefulWidget {
  final String category;
  final String pictureIcon;
  const SeeAllMusicPage(
      {super.key, required this.category, required this.pictureIcon});

  @override
  State<SeeAllMusicPage> createState() => _SeeAllMusicPageState();
}

class _SeeAllMusicPageState extends State<SeeAllMusicPage> {
  List<SeeAllMusicModel> compositions = [
    SeeAllMusicModel(
        author: "Nemanja Milović",
        time: 20.03,
        nameTitle: "Umirujuća kompozicija za miran san",
        picture: "assets/music_background.png"),
    SeeAllMusicModel(
        author: "Nemanja Milović",
        time: 20.03,
        nameTitle: "Umirujuća kompozicija za miran san",
        picture: "assets/music_background1.png"),
    SeeAllMusicModel(
        author: "Nemanja Milović",
        time: 20.03,
        nameTitle: "Umirujuća kompozicija za miran san",
        picture: "assets/music_background2.png"),
  ];
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: sizeWidth,
        height: sizeHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(31, 26, 87, 1),
                Color.fromRGBO(4, 7, 37, 1),
              ]),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: sizeWidth,
                height: 68,
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      widget.pictureIcon,
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.category,
                      style: GoogleFonts.redHatDisplay(
                          color: const Color.fromRGBO(239, 239, 239, 1),
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ...compositions.map((e) {
                return CompositionMusic(compositions: e);
              })
            ],
          ),
        ),
      ),
    );
  }
}
