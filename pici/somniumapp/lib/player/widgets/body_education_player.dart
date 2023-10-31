import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/player/widgets/education_play_textfiled.dart';
import 'package:somniumapp/episode.dart';
import 'package:somniumapp/player/models/education_player_model.dart';
import 'package:somniumapp/models/episode_model.dart';

class BodyEducationPlayer extends StatefulWidget {
  final EducationPlayerModel educationPlayer;
  const BodyEducationPlayer({super.key, required this.educationPlayer});

  @override
  State<BodyEducationPlayer> createState() => _BodyEducationPlayerState();
}

class _BodyEducationPlayerState extends State<BodyEducationPlayer> {
  List<EpisodeModel> episodes = [
    EpisodeModel(
        picture: "assets/episode.png",
        author: "Nemanja Milović",
        like: 6.231,
        nameTitle: "Načini za poboljšanje loših navika - Epizoda 2"),
    EpisodeModel(
        picture: "assets/episode.png",
        author: "Nemanja Milović",
        like: 6.231,
        nameTitle: "Načini za poboljšanje loših navika - Epizoda 3"),
    EpisodeModel(
        picture: "assets/episode.png",
        author: "Nemanja Milović",
        like: 6.231,
        nameTitle: "Načini za poboljšanje loših navika - Epizoda 4"),
    EpisodeModel(
        picture: "assets/episode.png",
        author: "Nemanja Milović",
        like: 6.231,
        nameTitle: "Načini za poboljšanje loših navika - Epizoda 5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 12, right: 15, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Text(
              widget.educationPlayer.nameTitle,
              style: GoogleFonts.redHatDisplay(
                  color: const Color.fromRGBO(239, 239, 239, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              'Author: ${widget.educationPlayer.author}',
              style: GoogleFonts.redHatDisplay(
                color: const Color.fromRGBO(239, 239, 239, 0.7),
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '${widget.educationPlayer.like.toString()} svidjanja',
                textAlign: TextAlign.right,
                style: GoogleFonts.redHatDisplay(
                  color: const Color.fromRGBO(239, 239, 239, 0.7),
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.favorite_border,
                size: 32,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const EducationPlayerTextField(),
          const SizedBox(
            height: 10,
          ),
          ...episodes.map((e) {
            return Episode(
              episode: e,
            );
          }),
        ],
      ),
    );
  }
}
