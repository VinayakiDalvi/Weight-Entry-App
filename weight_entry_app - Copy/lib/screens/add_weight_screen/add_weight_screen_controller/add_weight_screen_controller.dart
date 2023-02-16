import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddWeightScreenController extends GetxController{
  TextEditingController weightController = TextEditingController();
  final fb = FirebaseDatabase.instance;
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
    weightController.dispose();
  }
}