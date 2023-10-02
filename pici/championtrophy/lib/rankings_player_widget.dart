import 'package:championtrophy/models/ranking_player_widget_model.dart';
import 'package:championtrophy/ranking_player_widget.dart';

import 'package:flutter/material.dart';

class RankingsPlayerWidget extends StatefulWidget {
  const RankingsPlayerWidget({
    super.key,
  });

  @override
  State<RankingsPlayerWidget> createState() => _RankingsPlayerWidgetState();
}

class _RankingsPlayerWidgetState extends State<RankingsPlayerWidget> {
  List<RankingPlayerWidgetModel> ranking = [
    RankingPlayerWidgetModel(
        name: "Sonya R", picture: "assets/p1.jpg", points: 325.1, rank: 1),
    RankingPlayerWidgetModel(
        name: "Joey M", picture: "assets/p2.jpg", points: 320.1, rank: 2),
    RankingPlayerWidgetModel(
        name: "Annette R", picture: "assets/p2.jpg", points: 315, rank: 3),
    RankingPlayerWidgetModel(
        name: "Rebecca A", picture: "assets/p3.jpg", points: 310.2, rank: 4),
    RankingPlayerWidgetModel(
        name: "Jeffrey R", picture: "assets/p4.jpg", points: 308.6, rank: 5),
    RankingPlayerWidgetModel(
        name: "Sonya R", picture: "assets/p4.jpg", points: 307, rank: 6),
    RankingPlayerWidgetModel(
        name: "Sonya R", picture: "assets/p1.jpg", points: 305.4, rank: 7),
  ];
  List<String> scoreRank = ["Name", "Points", "Rank"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ...scoreRank.map(
              (scors) {
                return Expanded(
                  flex: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 53, 16, 59),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.08,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          scors,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...ranking.map((e) {
                  return RankingPlayerWidget(
                    rankingScores: e,
                  );
                }),
              ],
            ),
          ),
        )
      ],
    );
  }
}
