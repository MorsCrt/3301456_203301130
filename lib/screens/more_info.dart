import 'package:carrental/widgets/Shared/hint_to_textfield.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);
  static String moreInfoRoute = "/MoreInfo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LnrGradiendAppBar(appBarText: "More Info"),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const HintToTextField(hintText: "Name"),
            const HintToTextField(hintText: "Surname"),
            const HintToTextField(hintText: "Age"),
            const HintToTextField(hintText: "Phone"),
            const HintToTextField(hintText: "Country"),
            const HintToTextField(hintText: "City"),
            const HintToTextField(hintText: "District"),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/key.gif"),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
