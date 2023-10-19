import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    double currentTime = 0;
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(4, 7, 37, 1),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/setings_player.png",
                  width: 30,
                  height: 30,
                  color: const Color.fromRGBO(217, 218, 222, 1),
                ),
                Image.asset(
                  "assets/play_sound.png",
                  width: 65,
                  height: 65,
                ),
                Image.asset(
                  "assets/favorite_sound.png",
                  width: 30,
                  height: 30,
                  color: const Color.fromRGBO(217, 218, 222, 1),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Slider(
                    inactiveColor: const Color.fromRGBO(217, 217, 217, 1),
                    thumbColor: const Color.fromRGBO(149, 69, 156, 1),
                    activeColor: const Color.fromRGBO(149, 69, 156, 1),
                    max: 100,
                    min: 0,
                    value: currentTime,
                    onChanged: (value) {
                      setState(() {
                        currentTime = value;
                      });
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          child: Text(
                            "00:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            "10:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
