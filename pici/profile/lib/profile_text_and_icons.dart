
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileTextAndIcons extends StatefulWidget {
  const ProfileTextAndIcons({super.key});

  @override
  State<ProfileTextAndIcons> createState() => _ProfileTextAndIconsState();
}

class _ProfileTextAndIconsState extends State<ProfileTextAndIcons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 250, 113, 103),
          ),
          child: const Icon(
            Icons.apps,
            color: Colors.white,
          ),
        ),
        const Text(
          "Profile",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Icon(
          Icons.work,
          color: Colors.white,
        ),
      ],
    );
  }
}
