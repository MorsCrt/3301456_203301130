import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:carrental/widgets/SettingsPage/settings_list.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
  static String settingRoute = "/Settings";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const LnrGradiendAppBar(appBarText: "Settings"),
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
