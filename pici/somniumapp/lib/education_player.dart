import 'package:flutter/material.dart';

import 'package:somniumapp/body_education_player.dart';

import 'package:somniumapp/models/education_player_model.dart';

import 'package:somniumapp/education_play_widget.dart';

class EducationPlayer extends StatefulWidget {
  const EducationPlayer({super.key});

  @override
  State<EducationPlayer> createState() => _EducationPlayerState();
}

class _EducationPlayerState extends State<EducationPlayer> {
  List<EducationPlayerModel> episodecards = [
    EducationPlayerModel(
      author: "Nemanja Milovic",
      like: 6.231,
      nameTitle:
          "Navike koje vam unistavaju zivot: ovo ne treba da radite ujutru i uvece - Epizoda 1",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(4, 7, 37, 1),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const EducationPlayWidget(),
                BodyEducationPlayer(
                  educationPlayer: EducationPlayerModel(
                    author: "Nemanja Milović",
                    nameTitle:
                        "Navike koje vam uništavaju život: ovo ne treba da radite ujutru i uveče - Epizoda 1",
                    like: 6.231,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
