import 'package:get/get.dart';
import 'package:weight_entry_app/screens/add_weight_screen/add_weight_screen_controller/add_weight_screen_controller.dart';

class AddWeightScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddWeightScreenController());
  }
}
