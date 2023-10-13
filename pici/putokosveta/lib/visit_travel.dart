import 'package:flutter/material.dart';


class VisitAndTravel extends StatefulWidget {
 
  final String place;
  final double oclock;

  const VisitAndTravel({super.key,   
    required this.oclock,
  
    required this.place});

  @override
  State<VisitAndTravel> createState() => _VisitAndTravelState();
}

class _VisitAndTravelState extends State<VisitAndTravel> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 243, 222, 247),
            ),
            child: Center(child: Icon(Icons.abc)),
          ),
          Column(
            children: [
              Text(
        "",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
              "",   style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          Text(""),
        ],
      ),
    );
  }
}
