import 'package:carrental/models/cars/cars.dart';

const String carAssetSoundLocation =
    "assets/audios/Car-Engine-Sound-Effect.wav";
const String garageAssetSoundLocation =
    "assets/audios/Garage-Door-Sound-Effect.wav";

bool isChecked = false;

//for home page
List<Car> carInfoHome = [
  Car("assets/images/teslatruck.png", 900, "TeslaTruck"),
  Car("assets/images/nissan.png", 700, "NissanGTR"),
  Car("assets/images/LamborghiniAventador.png", 800, "LamborghiniAventador"),
  Car("assets/images/MercedesSclass.png", 550, "MercedesSClass"),
  Car("assets/images/Supra.png", 500, "SupraNew"),
  Car("assets/images/TeslaModel3.png", 650, "TeslaModel3"),
];
