import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carrental/screens/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import '../../constants/constant.dart';

class Splash extends StatelessWidget {
  static String splashRoute = "/splash";

  const Splash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //Get Screen Context Size
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Car Rental",
                style: TextStyle(
                    color: Colors.white, fontSize: 75, fontFamily: "Rooster"),
              ),
              const Padding(padding: EdgeInsets.only(top: 13)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.withOpacity(0.00001),
                ),
                onPressed: () {
                  AssetsAudioPlayer.newPlayer().open(
                      Audio(carAssetSoundLocation),
                      showNotification: false);
                  Navigator.pushNamed(context, SignIn.signInRoute);
                },
                child: Wrap(
                  children: const [
                    Icon(
                      Icons.car_rental,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "NEXT",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              )
            ],
          ),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/teslasplash.jpg"),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
