import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/transportation_model.dart';

class TransportationHotelWidget extends StatefulWidget {
  const TransportationHotelWidget({
    super.key,
  });

  @override
  State<TransportationHotelWidget> createState() =>
      _TransportationHotelWidgetState();
}

class _TransportationHotelWidgetState extends State<TransportationHotelWidget> {
  List<TransportationModel> transfortation = [
    TransportationModel(
        numbertransfortation: "04", transfortation: Icons.car_crash_rounded),
    TransportationModel(
        numbertransfortation: "05", transfortation: Icons.bus_alert),
    TransportationModel(
        numbertransfortation: "06", transfortation: Icons.bike_scooter),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...transfortation.map(
          (transfrortations) {
            return Expanded(
              flex: 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FittedBox(
                            //prilagodi velicinu
                            child: Icon(
                              transfrortations.transfortation,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Expanded(
                            child: FittedBox(
                                child: Text(
                                    transfrortations.numbertransfortation))),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
