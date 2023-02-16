import 'package:get/get.dart';
import 'package:weight_entry_app/screens/login_screen/contoller/login_screen_controller.dart';

class LoginScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());
  }
}
