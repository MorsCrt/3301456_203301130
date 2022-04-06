import 'package:carrental/screens/balance/balance.dart';
import 'package:carrental/screens/feedback/feedback.dart';
import 'package:carrental/screens/showroom_location/showroom_location.dart';
import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, FeedBack.feedBackRoute);
          },
          child: const Card(
            color: Color.fromARGB(255, 39, 39, 39),
            elevation: 5,
            child: ListTile(
                title: Text(
                  "Feedback",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(Icons.send, color: Colors.white)),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, ShowroomLocation.locationRoute);
          },
          child: const Card(
            color: Color.fromARGB(255, 39, 39, 39),
            elevation: 5,
            child: ListTile(
              title: Text(
                "Location",
                style: TextStyle(color: Colors.white),
              ),
              leading: InkWell(
                child: Icon(Icons.location_on_outlined, color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Balance.balanceRoute);
          },
          child: const Card(
            color: Color.fromARGB(255, 39, 39, 39),
            elevation: 5,
            child: ListTile(
              title: Text(
                "Balance",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.credit_card, color: Colors.white),
            ),
          ),
        ),
        const Card(
          color: Color.fromARGB(255, 39, 39, 39),
          elevation: 5,
          child: ListTile(
            title: Text(
              "Privacy",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.privacy_tip, color: Colors.white),
          ),
        ),
        const Card(
          color: Color.fromARGB(255, 39, 39, 39),
          elevation: 5,
          child: ListTile(
            title: Text(
              "Notifications",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.warning, color: Colors.white),
          ),
        ),
        const Card(
          color: Color.fromARGB(255, 39, 39, 39),
          elevation: 5,
          child: ListTile(
            title: Text(
              "Sign Out",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.exit_to_app, color: Colors.white),
          ),
        ),
      ],
    );
  }
}