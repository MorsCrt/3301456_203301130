import 'package:carrental/constants/constant.dart';
import 'package:carrental/widgets/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);
  static String feedBackRoute = "/Feedback";

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const LnrGradiendAppBar(appBarText: "Feedback - Thank You!"),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: TextField(
                maxLines: 100,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: "Feedback",
                    hintStyle: const TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3), width: 1))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Play Store?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Switch(
                        activeColor: const Color.fromARGB(255, 247, 246, 243),
                        inactiveTrackColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: FloatingActionButton.large(
                      onPressed: () {},
                      child: const Icon(Icons.feedback_outlined),
                      backgroundColor: const Color.fromARGB(255, 29, 28, 28),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
