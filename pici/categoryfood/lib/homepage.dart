import 'package:categoryfood/bottomnavi.dart';
import 'package:categoryfood/category.dart';
import 'package:categoryfood/fruit_cart.dart';
import 'package:categoryfood/fruit_slider.dart';
import 'package:categoryfood/profile_pasar_chowkit.dart';
import 'package:categoryfood/shop_category_text.dart';
import 'package:categoryfood/title_page.dart';
import 'package:categoryfood/usually_buy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning",
                style: TextStyle(color: Colors.grey.shade400, fontSize: 17),
              ),
              const SizedBox(
                height: 6,
              ),
              const TitlePage(),
              const SizedBox(
                height: 15,
              ),
              const ProfilePasarChowkit(),
              const SizedBox(
                height: 7,
              ),
              const FruitSlider(),
              const SizedBox(
                height: 15,
              ),
              const ShopCategoryText(),
              const SizedBox(
                height: 15,
              ),
              const Category(),
              const SizedBox(
                height: 15,
              ),
              const UsuallyBuy(),
              const SizedBox(
                height: 6,
              ),
              const FruitCart(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavi(),
    );
  }
}