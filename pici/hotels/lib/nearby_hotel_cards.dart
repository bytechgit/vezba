import 'package:flutter/material.dart';
import 'package:hotels/models/hotel_card_model.dart';
import 'package:hotels/nearby_hotel_card.dart';

class NearbyHotelCards extends StatefulWidget {
  const NearbyHotelCards({super.key});

  @override
  State<NearbyHotelCards> createState() => _NearbyHotelCardsState();
}

class _NearbyHotelCardsState extends State<NearbyHotelCards> {
  List<HotelCardModel> nearbyHotels = [
    HotelCardModel(
        nameCity: "New York, USA",
        favorite: Icons.favorite_border,
        partOfTheDay: "/night",
        location: Icons.location_on,
        numberRating: 4.9,
        numberSince: 10,
        nameHotel: "GoldenValley",
        picture: "assets/hotel1.jpg",
        price: 150),
    HotelCardModel(
        nameCity: "New York, USA",
        favorite: Icons.favorite_border,
        partOfTheDay: "/night",
        location: Icons.location_on,
        numberRating: 4.9,
        numberSince: 10,
        nameHotel: "GoldenValley",
        picture: "assets/hotel2.jpg",
        price: 150),
    HotelCardModel(
        nameCity: "New York, USA",
        favorite: Icons.favorite_border,
        partOfTheDay: "/night",
        location: Icons.location_on,
        numberRating: 4.9,
        numberSince: 10,
        nameHotel: "GoldenValley",
        picture: "assets/hotel3.jpg",
        price: 150),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              child: Text(
                "Nearby Hotel",
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
          height: 6,
        ),
        ...nearbyHotels.map((e) {
          return NearbyHotelCard(nearbyHotel: e);
        }),
      ],
    );
  }
}
