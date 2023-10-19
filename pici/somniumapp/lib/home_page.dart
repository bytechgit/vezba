import 'package:flutter/material.dart';

import 'package:somniumapp/header_home_page.dart';

import 'package:somniumapp/recomended_songs.dart';

import 'package:somniumapp/recommended_educations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(children: [
            Column(
              children: [
                const HeaderHomePage(),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(31, 26, 87, 1),
                          Color.fromRGBO(4, 7, 37, 1),
                        ]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, bottom: 12),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/somnium.png",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 65,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const RecommendedSongs(),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 335,
                          height: 2,
                          color: const Color.fromRGBO(94, 65, 225, 0.5),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const RecommendedEducations(),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // const Positioned(
            //     top: 230, left: 10, right: 10, child: AvatarChat()),
            // Positioned(bottom: 0, left: 0, right: 0, child: BottomNavi()),
          ]),
        ),
      ),
    );
  }
}
