import 'package:carrental/screens/home.dart';
import 'package:carrental/services/auth/firestore_services.dart';
import 'package:carrental/util/validations.dart';
import 'package:carrental/util/white_snackbar.dart';
import 'package:carrental/widgets/Shared/hint_to_textfield.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({Key? key}) : super(key: key);
  static String moreInfoRoute = "/MoreInfo";

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  FirestoreServices service = FirestoreServices();
  final name = TextEditingController();
  final surname = TextEditingController();
  final age = TextEditingController();
  final phone = TextEditingController();
  final country = TextEditingController();
  final city = TextEditingController();
  final district = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LnrGradiendAppBar(appBarText: "More Info"),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            HintToTextField(
              hintText: "Name",
              controller: name,
            ),
            HintToTextField(
              hintText: "Surname",
              controller: surname,
            ),
            HintToTextField(
              hintText: "Age",
              controller: age,
            ),
            HintToTextField(
              hintText: "Phone",
              controller: phone,
            ),
            HintToTextField(
              hintText: "Country",
              controller: country,
            ),
            HintToTextField(
              hintText: "City",
              controller: city,
            ),
            HintToTextField(
              hintText: "District",
              controller: district,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: () {
                    if (nullValid(name) == true &&
                        nullValid(surname) == true &&
                        nullValid(age) == true &&
                        nullValid(phone) == true &&
                        nullValid(country) == true &&
                        nullValid(city) == true &&
                        nullValid(district) == true) {
                      service.createUserMoreInfo(
                          name.text,
                          surname.text,
                          age.text,
                          phone.text,
                          country.text,
                          city.text,
                          district.text);
                      Navigator.pushNamed(context, Home.homeRoute);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          whiteSnackBar("Fields should not empty!"));
                    }
                  },
                  child: Image.asset("assets/images/key.gif")),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
