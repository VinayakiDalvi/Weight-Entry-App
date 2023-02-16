import 'package:get/get.dart';
import 'package:weight_entry_app/screens/add_weight_screen/add_weight_screen.dart';
import 'package:weight_entry_app/screens/home_screen/home_screen.dart';
import 'package:weight_entry_app/screens/login_screen/bindings/login_screen_bindings.dart';
import 'package:weight_entry_app/screens/login_screen/login_screen.dart';

import '../screens/add_weight_screen/add_weight_screen_bindings/add_weight_screen_bindings.dart';
import '../screens/home_screen/bindings/home_screen_bindings.dart';

class AppRoutes {
  static const String login_screen = "/loginscreen";
  static const String home_screen = "/homescreen";
  static const String add_weight_screen = "/addweightscreen";
  static List<GetPage> pages = [
    GetPage(
        name: login_screen,
        page: () => LoginScreen(),
        bindings: [LoginScreenBindings()]),
    GetPage(
        name: home_screen,
        page: () => HomeScreen(),
        bindings: [HomeScreenBindings()]),
    GetPage(
        name: add_weight_screen,
        page: () => AddWeightScreen(),
        bindings: [AddWeightScreenBindings()])
  ];
}
