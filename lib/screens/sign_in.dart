import 'package:carrental/screens/home.dart';
import 'package:carrental/screens/passreset.dart';
import 'package:carrental/widgets/Shared/hint_to_textfield.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  static String signInRoute = "/SignIn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/teslalogin.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, SignUp.signUpRoute);
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Icon(
                            Icons.alternate_email,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: HintToTextField(hintText: "Email"),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: HintToTextField(hintText: "Password"),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Password.passRoute);
                            },
                            child: const Image(
                              image: AssetImage("assets/images/ForgotPass.gif"),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: FloatingActionButton(
                              onPressed: () {
                                Navigator.pushNamed(context, Home.homeRoute);
                              },
                              child: const Icon(Icons.garage),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
