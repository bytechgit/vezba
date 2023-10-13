import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:putokosveta/models/contry_model.dart';

class Country extends StatefulWidget {
  const Country({Key? key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  List<String> users = [
    "assets/france.jpg",
    "assets/france.jpg",
    "assets/france.jpg",
    "assets/france.jpg",
  ];
  CountryModel country = CountryModel(
      picture: "assets/france.jpg",
      date: 21,
      country: "Paris, France",
      days: 1,
      mounth: "21. May Sat");
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 260,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/france.jpg"), fit: BoxFit.cover),
            ),
            child: const Padding(
              padding:
                  EdgeInsets.only(bottom: 20.0, top: 14, left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "Paris, France",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Row(children: [
                    Icon(
                      Icons.date_range,
                      color: Colors.white,
                    ),
                    Text(
                      "21 - 24 May",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Spacer(),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          for (int i = 0; i < users.length; i++)
            Positioned(
              top: 180,
              right: 25 * i.toDouble(),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(users[i]), fit: BoxFit.cover),
                ),
              ),
            ),
          Positioned.fill(
            top: 230,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 12, left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Day 1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "21. May Sat",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 100,
                              height: 4,
                              decoration: const BoxDecoration(
                                color: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DottedBorder(
                      strokeWidth: 1,
                      color: Colors.black,
                      radius: const Radius.circular(10),
                      dashPattern: const [20, 10],
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 244, 249),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.purple,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Add plan",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 20,
                          child: Stack(
                            children: [
                              for (int i = 0; i < 24; i++)
                                Positioned(
                                  top: 10 * i.toDouble(),
                                  left: 5,
                                  child: Container(
                                    width: 2,
                                    height: 7,
                                    color: Colors.grey,
                                  ),
                                ),
                              Positioned(
                                left: 0,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 75,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.purple,
                                          spreadRadius: 1,
                                        ),
                                      ]),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 150,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.purple,
                                          spreadRadius: 1,
                                        ),
                                      ]),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 225,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.purple,
                                          spreadRadius: 1,
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
