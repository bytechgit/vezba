import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/transportation_model.dart';

class TransportationHotelWidget extends StatefulWidget {
  final TransportationModel transportations;
  const TransportationHotelWidget({
    required this.transportations,
    super.key,
  });

  @override
  State<TransportationHotelWidget> createState() =>
      _TransportationHotelWidgetState();
}

class _TransportationHotelWidgetState extends State<TransportationHotelWidget> {
  @override
  Widget build(BuildContext context) {
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
                      widget.transportations.transfortation,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                    child: FittedBox(
                        child:
                            Text(widget.transportations.numberTransfortation))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
