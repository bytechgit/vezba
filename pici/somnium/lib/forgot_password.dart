import 'package:flutter/material.dart';
import 'package:somnium/verify_email.dart';

import 'package:somnium/somnium_textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(31, 26, 87, 1),
            Color.fromRGBO(4, 7, 37, 1),
          ]),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 149,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(107, 80, 231, 1),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot your password",
                    style: TextStyle(
                      color: Color.fromRGBO(235, 235, 235, 1),
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Please enter the E-mail adress you’d like your password reset information sent to",
                  style: TextStyle(
                      color: Color.fromRGBO(235, 235, 235, 1), fontSize: 12),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SomniumTextField(
                  hintText: "Enter your E-Mail",
                  title: "E-mail Address",
                  prefixIcon: "assets/message.png",
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerifyEmail()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(94, 65, 225, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Send",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(235, 235, 235, 1),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Back To Log In",
                    style: TextStyle(
                        color: Color.fromRGBO(192, 192, 192, 1), fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
