import 'package:carrental/constants/constant.dart';
import 'package:carrental/widgets/Shared/hint_to_textfield.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);
  static String balanceRoute = "/Balance";
  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const LnrGradiendAppBar(appBarText: "Balance"),
        body: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: click ? 100 : 200,
              width: click ? 100 : 200,
              curve: Curves.fastOutSlowIn,
              child: Container(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: Image.asset(
                    "assets/images/creditcard.gif",
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HintToTextField(hintText: "Full Name"),
                  const HintToTextField(hintText: "Card Number"),
                  const HintToTextField(hintText: "Expiration Date"),
                  const HintToTextField(hintText: "CVC Code"),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("3D Secure",
                            style: TextStyle(color: Colors.white)),
                      ),
                      Checkbox(
                          side: const BorderSide(color: Colors.white),
                          checkColor: Colors.black,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: FloatingActionButton.large(
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          child: const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 75,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        resizeToAvoidBottomInset: false);
  }
}
