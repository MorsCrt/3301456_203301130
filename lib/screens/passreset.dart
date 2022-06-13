import 'package:carrental/screens/sign_in.dart';
import 'package:carrental/services/auth/auth_services.dart';
import 'package:carrental/util/validations.dart';
import 'package:carrental/util/white_snackbar.dart';
import 'package:carrental/widgets/Shared/hint_to_textfield.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  static String passRoute = "/passreset";
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final email = TextEditingController();
  FirebaseAuthServices service = FirebaseAuthServices();

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
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: HintToTextField(
                  hintText: "Email",
                  controller: email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      if (emailValid(email) == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            whiteSnackBar("Check your email box!"));
                        service.resetPassword(email.text).then((value) =>
                            Navigator.pushNamed(context, SignIn.signInRoute));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(whiteSnackBar("Email is not valid"));
                      }
                    },
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
