import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  TextEditingController weightController = TextEditingController();
  final fb = FirebaseDatabase.instance;
  // late DateTime current_date;
  // DateTime.now();
  //
  // print(current_date);
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    weightController.dispose();
  }

  upd(dynamic k) async {
    DatabaseReference ref1 = FirebaseDatabase.instance.ref("Weight/$k");

// Only update the name, leave the age and address!
    await ref1.update({"Weight": weightController.text});
    weightController.clear();
  }
}
