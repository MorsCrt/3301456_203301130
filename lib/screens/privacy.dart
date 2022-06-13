import 'package:carrental/util/file.dart';
import 'package:carrental/util/white_snackbar.dart';
import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);
  static String locationPrivacy = "/Privacy";

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  String textData = '';
  getFileData() async {
    String privacyText;
    privacyText = await rootBundle.loadString("assets/docs/privacy.txt");

    setState(() {
      textData = privacyText;
    });
  }

  @override
  void initState() {
    getFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LnrGradiendAppBar(appBarText: "Privacy"),
      body: SingleChildScrollView(
        child: GestureDetector(
            onDoubleTap: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(whiteSnackBar("Privacy agreement accepted"));
              FileUtils.saveToFile("Accepted");
            },
            onLongPress: () {
              FileUtils.readFromFile().then((value) =>
                  ScaffoldMessenger.of(context)
                      .showSnackBar(whiteSnackBar(value)));
            },
            child: Text(textData, style: const TextStyle(color: Colors.white))),
      ),
    );
  }
}
