import 'package:flutter/material.dart';
import 'package:somniumapp/music/view/pages/see_all_music_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SeeAllMusicPage(
        category: "Omiljeno",
        pictureIcon: "assets/favorite_icon.png",
      ),
    );
  }
}
