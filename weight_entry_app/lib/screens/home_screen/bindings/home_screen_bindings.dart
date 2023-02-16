import 'package:get/get.dart';
import 'package:weight_entry_app/screens/login_screen/contoller/login_screen_controller.dart';

import '../controller/home_screen_controller.dart';

class HomeScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
