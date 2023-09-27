import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/park_card_model.dart';

class ParkCard extends StatefulWidget {
  final ParkCardModel park;
  const ParkCard({super.key, required this.park});

  @override
  State<ParkCard> createState() => _ParkCardState();
}

class _ParkCardState extends State<ParkCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 170,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
              image: AssetImage(widget.park.picture), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                widget.park.namePark,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.place,
                    size: 15,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    widget.park.placePark,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
