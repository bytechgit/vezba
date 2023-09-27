import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/transportation_model.dart';
import 'package:travel_mob_app/transportation_hotel_widget.dart';

class TransportationsHotelWidget extends StatefulWidget {
  const TransportationsHotelWidget({
    super.key,
  });

  @override
  State<TransportationsHotelWidget> createState() =>
      _TransportationsHotelWidgetState();
}

class _TransportationsHotelWidgetState
    extends State<TransportationsHotelWidget> {
  List<TransportationModel> transfortations = [
    TransportationModel(
        numberTransfortation: "04", transfortation: Icons.car_crash_rounded),
    TransportationModel(
        numberTransfortation: "05", transfortation: Icons.bus_alert),
    TransportationModel(
        numberTransfortation: "06", transfortation: Icons.bike_scooter),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...transfortations.map(
          (e) {
            return TransportationHotelWidget(transportations: e);
          },
        )
      ],
    );
  }
}
