import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/models/episode_model.dart';

class Episode extends StatefulWidget {
  final EpisodeModel episode;
  const Episode({super.key, required this.episode});

  @override
  State<Episode> createState() => _EpisodeState();
}

class _EpisodeState extends State<Episode> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.episode.picture), fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.episode.nameTitle,
                  style: GoogleFonts.redHatDisplay(
                      color: const Color.fromRGBO(239, 239, 239, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "${widget.episode.like.toString()} svidjanja",
                  style: GoogleFonts.redHatDisplay(
                      color: const Color.fromRGBO(239, 239, 239, 0.7),
                      fontSize: 8,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Author:  ${widget.episode.author} ",
                  style: GoogleFonts.redHatDisplay(
                      color: const Color.fromRGBO(239, 239, 239, 0.7),
                      fontSize: 8,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
