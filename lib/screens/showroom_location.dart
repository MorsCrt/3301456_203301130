import 'package:carrental/widgets/linear_gradien_appbar.dart';
import 'package:flutter/material.dart';

class ShowroomLocation extends StatelessWidget {
  const ShowroomLocation({Key? key}) : super(key: key);
  static String locationRoute = "/ShowroomLocation";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const LnrGradiendAppBar(
        appBarText: "Showroom Location",
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(120),
              child: Image.asset(
                "assets/images/showroom.png",
                height: 250,
                width: 350,
              ),
            ),
            const Text(
              "250 Savannah Highway\n Charleston\n SC 29414",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: FloatingActionButton.large(
                backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                onPressed: () {},
                child: const Icon(Icons.location_on_outlined),
              ),
            )
          ],
        ),
      ),
    );
  }
}
