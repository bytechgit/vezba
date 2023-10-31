import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/somnium_textfield.dart';

class BodyLogUp extends StatefulWidget {
  const BodyLogUp({super.key});

  @override
  State<BodyLogUp> createState() => _BodyLogUpState();
}

class _BodyLogUpState extends State<BodyLogUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(241, 241, 241, 1),
              Color.fromRGBO(255, 255, 255, 1),
            ]),
      ),
      child: Column(
        children: [
          const Expanded(
            flex: 14,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SomniumTextField(
                    title: "E-mail address",
                    hintText: "info@bytech.rs",
                    prefixIcon: "assets/message.png"),
                SizedBox(
                  height: 15,
                ),
                SomniumTextField(
                  title: "Password",
                  hintText: "Enter your password",
                  prefixIcon: "assets/lock_password.png",
                  suffixIcon: "assets/view_password.png",
                ),
                SizedBox(
                  height: 15,
                ),
                SomniumTextField(
                  title: "Confirm password",
                  hintText: "Confirm your password",
                  prefixIcon: "assets/lock_password.png",
                  suffixIcon: "assets/view_password.png",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(31, 26, 87, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const VerifyEmail()));
                        },
                        child: Text(
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.redHatDisplay(
                              color: const Color.fromRGBO(233, 233, 233, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15.0, right: 15, bottom: 5, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 45,
                  child: Container(
                    height: 1,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(125, 125, 125, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "or",
                  style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1), fontSize: 10),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 45,
                  child: Container(
                    height: 1,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(144, 144, 144, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/google.png",
                  width: 70,
                  height: 70,
                ),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "assets/apple.png",
                  width: 70,
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
