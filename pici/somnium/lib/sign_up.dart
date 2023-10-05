import 'package:flutter/material.dart';
import 'package:somnium/log_in.dart';
import 'package:somnium/somnium_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
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
                  height: 25,
                ),
                const SomniumTextField(
                  hintText: "Enter your E-Mail",
                  title: "E-mail Address",
                  prefixIcon: "assets/message.png",
                ),
                const SizedBox(height: 10),
                const SomniumTextField(
                  hintText: "Enter your password",
                  title: "Enter your password",
                  prefixIcon: "assets/lock_password.png",
                  suffixIcon: "assets/view_password.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                const SomniumTextField(
                  hintText: "Confirm your password",
                  title: "Confirm password",
                  prefixIcon: "assets/lock_password.png",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      checkColor: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      "I agree to the",
                      style: TextStyle(
                        color: Color.fromRGBO(144, 144, 144, 1),
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      " Terms&Conditions",
                      style: TextStyle(
                        color: Color.fromRGBO(236, 167, 44, 1),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(236, 167, 44, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(235, 235, 235, 1),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 45,
                      child: Container(
                        height: 1,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(144, 144, 144, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "or",
                      style: TextStyle(
                          color: Color.fromRGBO(144, 144, 144, 1),
                          fontSize: 10),
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
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 50,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(235, 235, 235, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/google.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Google",
                              style: TextStyle(
                                  color: Color.fromRGBO(46, 46, 46, 1),
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 50,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(235, 235, 235, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/apple.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Apple",
                              style: TextStyle(
                                  color: Color.fromRGBO(46, 46, 46, 1),
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "already have an account? -",
                      style: TextStyle(
                          color: Color.fromRGBO(192, 192, 192, 1),
                          fontSize: 10),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogIn()));
                      },
                      child: const Text(
                        "LOG IN",
                        style: TextStyle(
                            color: Color.fromRGBO(236, 167, 44, 1),
                            fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
