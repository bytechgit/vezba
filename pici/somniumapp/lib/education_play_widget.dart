import 'package:flutter/material.dart';

class EducationPlayWidget extends StatefulWidget {
  const EducationPlayWidget({
    super.key,
  });

  @override
  State<EducationPlayWidget> createState() => _EducationPlayWidgetState();
}

class _EducationPlayWidgetState extends State<EducationPlayWidget> {
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.28,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/player_background.png"),
              fit: BoxFit.cover),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.28,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.5),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/rewind_back.png",
                    width: 57,
                    height: 57,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset(
                        "assets/play_button1.png",
                        width: 25,
                        fit: BoxFit.scaleDown,
                        height: 25,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/rewind_next.png",
                    width: 57,
                    height: 57,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: Slider(
                min: 0.0,
                max: 100.0,
                thumbColor: const Color.fromRGBO(188, 121, 2, 1),
                activeColor: const Color.fromRGBO(188, 121, 2, 1),
                inactiveColor: const Color.fromRGBO(217, 217, 217, 0.7),
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
