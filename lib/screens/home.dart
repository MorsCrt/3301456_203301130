import 'package:carrental/constants/constant.dart';
import 'package:carrental/screens/settings.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';
import 'package:carrental/widgets/Home/car_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String homeRoute = "/Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LnrGradiendAppBar(
        appBarText: "Home",
        actionList: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Settings.settingRoute);
            },
            icon: const Icon(
              Icons.settings_applications_outlined,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: carInfoHome.length,
        itemBuilder: (context, index) => CarList(index),
      ),
    );
  }
}
