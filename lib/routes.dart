import 'package:get/get.dart';
import 'package:ims/screens/home/home.dart';
import 'package:ims/screens/onbordScreen/onboard_screen.dart';
import 'package:ims/screens/signIn/components/signIn.dart';
import 'package:ims/screens/splash/splashScreen.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(name: '/', page: () => Home()),
    GetPage(name: '/signIn', page: () => const Signin()),
  ];
}
