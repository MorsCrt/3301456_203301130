import 'package:carrental/constants/constant.dart';
import 'package:carrental/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:carrental/widgets/Home/car_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String homeRoute = "/Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Settings.settingRoute);
              },
              icon: const Icon(
                Icons.settings_applications_outlined,
                color: Colors.grey,
              ))
        ],
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Color.fromARGB(171, 73, 73, 73)],
                begin: Alignment.bottomCenter,
                end: Alignment.topRight),
          ),
        ),
        title: const Text(
          "Rental",
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontFamily: "Rooster"),
        ),
      ),
      body: ListView.builder(
        itemCount: carInfoHome.length,
        itemBuilder: (context, index) => CarList(index),
      ),
    );
  }
}
