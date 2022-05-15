import 'package:carrental/widgets/Shared/hint_to_textfield.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  static String passRoute = "/passreset";
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LnrGradiendAppBar(appBarText: "Password Reset"),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Please Enter Your Email",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: HintToTextField(hintText: "Email"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    child: const Icon(Icons.mail)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    "assets/images/vault.gif",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
