import 'package:flutter/material.dart';
import 'package:hotels/bottom_navi_bar.dart';
import 'package:hotels/header_widget.dart';
import 'package:hotels/hotel_cards.dart';
import 'package:hotels/nearby_hotel_cards.dart';

import 'package:hotels/textfield_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(),
                SizedBox(
                  height: 12,
                ),
                TextFieldWidget(),
                SizedBox(
                  height: 12,
                ),
                HotelCards(),
                SizedBox(
                  height: 12,
                ),
                NearbyHotelCards(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNaviBar(),
    );
  }
}
