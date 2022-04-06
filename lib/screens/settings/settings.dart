import 'package:carrental/widgets/settings_list.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
  static String settingRoute = "/Settings";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(171, 73, 73, 73),
              Colors.black,
            ], begin: Alignment.bottomCenter, end: Alignment.topRight),
          ),
        ),
        title: const Text(
          "Rental",
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontFamily: "Rooster"),
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/cevahir.png",
                height: 150,
                width: 150,
              ),
            ),
            const SettingsList(),
          ],
        ),
      ),
    );
  }
}
