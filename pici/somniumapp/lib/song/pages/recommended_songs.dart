import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/models/song_model.dart';
import 'package:somniumapp/song_card.dart';

class RecommendedSongs extends StatelessWidget {
  final String categoryIcon;
  final String category;
  final String viewAllText;
  const RecommendedSongs(
      {super.key,
      required this.category,
      required this.categoryIcon,
      required this.viewAllText});

  @override
  Widget build(BuildContext context) {
    List<SongModel> mysics = [
      SongModel(
          author: "Sasa Stojiljkovic",
          nameMusic: "Morning Sleep",
          picture: "assets/picture_music.png",
          time: 65),
      SongModel(
          author: "Sasa Stojiljkovic",
          nameMusic: "Morning Sleep",
          picture: "assets/song_mountains.png",
          time: 65),
      SongModel(
          author: "Sasa Stojiljkovic",
          nameMusic: "Morning Sleep",
          picture: "assets/picture_music.png",
          time: 65),
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5,
          ),
          child: Row(
            children: [
              Image.asset(
                categoryIcon,
                fit: BoxFit.cover,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  category,
                  style: GoogleFonts.redHatDisplay(
                      color: const Color.fromRGBO(239, 239, 239, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>const Stranica()));
                  },
                  child: Text(
                    viewAllText,
                    textAlign: TextAlign.end,
                    style: GoogleFonts.redHatDisplay(
                        color: const Color.fromRGBO(236, 167, 44, 1),
                        fontSize: 10,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...mysics.map((e) {
                return SongCard(music: e);
              }),
            ],
          ),
        ),
      ],
    );
  }
}
