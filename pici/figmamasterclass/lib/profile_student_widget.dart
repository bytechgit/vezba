import 'package:flutter/material.dart';

class ProfileStudentWidget extends StatefulWidget {
  const ProfileStudentWidget({super.key});

  @override
  State<ProfileStudentWidget> createState() => _ProfileStudentWidgetState();
}

class _ProfileStudentWidgetState extends State<ProfileStudentWidget> {
  List<String> profiles = [
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
    "assets/profile1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: [
          for (int i = 0; i < (profiles.length > 4 ? 4 : profiles.length); i++)
            Positioned(
              left: 25 * i.toDouble(),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(profiles[i]), fit: BoxFit.cover),
                ),
              ),
            ),
          if (profiles.length > 4)
            Positioned(
              top: 0,
              left: 75,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "+${profiles.length - 4 + 1}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Achive Students",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
