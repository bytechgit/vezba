import 'package:championtrophy/models/ranking_player_widget_model.dart';
import 'package:flutter/material.dart';

class RankingPlayerWidget extends StatefulWidget {
  final RankingPlayerWidgetModel rankingScores;
  const RankingPlayerWidget({super.key, required this.rankingScores});

  @override
  State<RankingPlayerWidget> createState() => _RankingPlayerWidgetState();
}

class _RankingPlayerWidgetState extends State<RankingPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade50,
          boxShadow: [
            BoxShadow(spreadRadius: 1, color: Colors.grey.shade100),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 5, top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(widget.rankingScores.picture),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(child: Text(widget.rankingScores.name)),
            const SizedBox(
              width: 25,
            ),
            FittedBox(child: Text(widget.rankingScores.points.toString())),
            const Spacer(),
            Expanded(child: Text(widget.rankingScores.rank.toString())),
          ],
        ),
      ),
    );
  }
}
