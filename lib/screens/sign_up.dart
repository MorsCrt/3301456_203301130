import 'package:carrental/util/validations.dart';
import 'package:carrental/util/white_snackbar.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/Shared/hint_to_textfield.dart';
import 'more_info.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static String signUpRoute = "/SignUp";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const LnrGradiendAppBar(appBarText: "Sign Up"),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/roof.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 40))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Icon(
                              Icons.alternate_email,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: HintToTextField(
                              controller: email,
                              hintText: "Email",
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: HintToTextField(
                          controller: password,
                          hintText: "Password",
                        ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(290, 40, 0, 0),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                            child: FloatingActionButton(
                              onPressed: () {
                                if (emailValid(email) == true &&
                                    passValid(password) == true) {
                                  Navigator.pushNamed(
                                      context, MoreInfo.moreInfoRoute);
                                } else if (emailValid(email) == false &&
                                    passValid(password) == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      whiteSnackBar("Email is not valid"));
                                } else if (emailValid(email) == true &&
                                    passValid(password) == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      whiteSnackBar(
                                          "Password min 8 characters\nshould contain least upper and lower case\none digit and one special character"));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      whiteSnackBar(
                                          "Email and pass is not valid,Password min 8 characters\nshould contain least upper and lower case\none digit and one special character  "));
                                }
                              },
                              child: const Icon(Icons.save_as_outlined),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
