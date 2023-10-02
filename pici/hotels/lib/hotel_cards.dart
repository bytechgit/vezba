import 'package:flutter/material.dart';
import 'package:hotels/hotel_card.dart';
import 'package:hotels/models/hotel_card_model.dart';

class HotelCards extends StatefulWidget {
  const HotelCards({super.key});

  @override
  State<HotelCards> createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCards> {
  List<HotelCardModel> hotels = [
    HotelCardModel(
        location: Icons.location_on,
        favorite: Icons.favorite_border,
        numberRating: 4.5,
        partOfTheDay: "/night",
        numberSince: 10,
        nameCity: "New York, USA",
        nameHotel: "OasisOverture",
        picture: "assets/hotel1.jpg",
        price: 650),
    HotelCardModel(
        location: Icons.location_on,
        favorite: Icons.favorite_border,
        numberRating: 4.5,
        partOfTheDay: "/night",
        numberSince: 10,
        nameCity: "New York, USA",
        nameHotel: "HiddenHaven",
        picture: "assets/hotel2.jpg",
        price: 650),
    HotelCardModel(
        partOfTheDay: "/night",
        location: Icons.location_on,
        favorite: Icons.favorite_border,
        numberRating: 4.5,
        numberSince: 10,
        nameCity: "New York, USA",
        nameHotel: "OasisOverture",
        picture: "assets/hotel3.jpg",
        price: 650),
    HotelCardModel(
        partOfTheDay: "/night",
        location: Icons.location_on,
        favorite: Icons.favorite_border,
        numberRating: 4.5,
        numberSince: 10,
        nameCity: "New York, USA",
        nameHotel: "HiddenHaven",
        picture: "assets/hotel1.jpg",
        price: 550),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              child: Text(
                "Recommended Hotel",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            FittedBox(
              child: Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...hotels.map((e) {
                return HotelCard(
                  hotel: e,
                );
              })
            ],
          ),
        ),
      ],
    );
  }
}
