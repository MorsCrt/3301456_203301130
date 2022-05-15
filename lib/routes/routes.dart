import 'package:carrental/screens/balance.dart';
import 'package:carrental/screens/feedback.dart';
import 'package:carrental/screens/home.dart';
import 'package:carrental/screens/showroom_location.dart';
import 'package:carrental/screens/more_info.dart';
import 'package:carrental/screens/passreset.dart';
import 'package:carrental/screens/settings.dart';
import 'package:carrental/screens/sign_in.dart';
import 'package:carrental/screens/sign_up.dart';
import 'package:flutter/widgets.dart'; //For Widget Builder
import '../screens/splash.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.splashRoute: (context) => const Splash(),
  SignIn.signInRoute: (context) => const SignIn(),
  SignUp.signUpRoute: (context) => const SignUp(),
  Password.passRoute: (context) => const Password(),
  MoreInfo.moreInfoRoute: (context) => const MoreInfo(),
  Home.homeRoute: (context) => const Home(),
  Settings.settingRoute: (context) => const Settings(),
  Balance.balanceRoute: (context) => const Balance(),
  FeedBack.feedBackRoute: (context) => const FeedBack(),
  ShowroomLocation.locationRoute: (context) => const ShowroomLocation()
};
