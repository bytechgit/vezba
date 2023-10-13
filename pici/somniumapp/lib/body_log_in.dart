import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:somniumapp/recovery_password.dart';

import 'package:somniumapp/somnium_textfield.dart';
import 'package:somniumapp/verify_email.dart';

class BodyLogIn extends StatefulWidget {
  const BodyLogIn({super.key});

  @override
  State<BodyLogIn> createState() => _BodyLogInState();
}

class _BodyLogInState extends State<BodyLogIn> {
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
          Expanded(
            flex: 14,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SomniumTextField(
                    title: "E-mail address",
                    hintText: "info@bytech.rs",
                    prefixIcon: "assets/message.png"),
                const SizedBox(
                  height: 15,
                ),
                const SomniumTextField(
                  title: "Password",
                  hintText: "Enter your password",
                  prefixIcon: "assets/lock_password.png",
                  suffixIcon: "assets/view_password.png",
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0, top: 2),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RecoveryPassword()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text(
                          "forgot your password?",
                          style: GoogleFonts.redHatDisplay(
                              decoration: TextDecoration.underline,
                              color: const Color.fromRGBO(169, 169, 169, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VerifyEmail()));
                        },
                        child: Text(
                          "Log In",
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
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/google.png",
                  width: 75,
                  height: 75,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "assets/apple.png",
                  width: 75,
                  height: 75,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
