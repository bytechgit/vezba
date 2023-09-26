import 'package:flutter/material.dart';

class ProfilePasarChowkit extends StatefulWidget {
  const ProfilePasarChowkit({super.key});

  @override
  State<ProfilePasarChowkit> createState() => _ProfilePasarChowkitState();
}

class _ProfilePasarChowkitState extends State<ProfilePasarChowkit> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "profile.jpeg",
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Flexible(
          flex: 3,
          child: Text(
            "Pasar Chowkit, Malaysia",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        const Spacer(),
        const Icon(Icons.keyboard_arrow_down),
      ],
    );
  }
}
