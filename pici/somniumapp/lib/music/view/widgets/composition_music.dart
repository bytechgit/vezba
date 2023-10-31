import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/music/view/models/see_all_music_video.dart';

class CompositionMusic extends StatefulWidget {
  final SeeAllMusicModel compositions;
  const CompositionMusic({super.key, required this.compositions});

  @override
  State<CompositionMusic> createState() => _CompositionMusicState();
}

class _CompositionMusicState extends State<CompositionMusic> {
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: sizeWidth,
          height: sizeHeight * 0.25,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.compositions.picture),
                fit: BoxFit.cover),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: 57,
                height: 32,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(27, 27, 27, 0.67),
                ),
                child: Center(
                  child: Text(
                    widget.compositions.time.toString(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.redHatDisplay(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15.0, top: 15, bottom: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.compositions.nameTitle,
                      style: GoogleFonts.redHatDisplay(
                          color: const Color.fromRGBO(239, 239, 239, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Author: ${widget.compositions.author}',
                      style: GoogleFonts.redHatDisplay(
                          color: const Color.fromRGBO(239, 239, 239, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                  size: 31,
                ),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
