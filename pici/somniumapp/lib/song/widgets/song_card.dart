import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/models/song_model.dart';

class SongCard extends StatefulWidget {
  final SongModel music;
  const SongCard({super.key, required this.music});

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Padding(
        padding: const EdgeInsets.only(right: 14, left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(widget.music.picture),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                        image: AssetImage("assets/playmusic.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.music.nameMusic,
                        style: GoogleFonts.redHatDisplay(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Author: ${widget.music.author}',
                        style: GoogleFonts.redHatDisplay(
                          color: const Color.fromRGBO(216, 216, 216, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Text(
                    ' ${widget.music.time.toString()} min',
                    style: GoogleFonts.redHatDisplay(
                      color: const Color.fromRGBO(216, 216, 216, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
