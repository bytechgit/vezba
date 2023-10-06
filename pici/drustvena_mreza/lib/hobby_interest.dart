import 'package:drustvena_mreza/models/hobby_interest_model.dart';
import 'package:flutter/material.dart';

class HobbyInterest extends StatefulWidget {
  final HobbyInterestModel hobby;
  const HobbyInterest({
    super.key,
    required this.hobby,
  });

  @override
  State<HobbyInterest> createState() => _HobbyInterestState();
}

class _HobbyInterestState extends State<HobbyInterest> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 5, bottom: 5),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.hobby.iconHobby,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.hobby.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
