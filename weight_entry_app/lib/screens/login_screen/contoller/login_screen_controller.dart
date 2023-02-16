import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:weight_entry_app/addweight.dart';
import 'package:weight_entry_app/app_routes/app_routes.dart';
import 'package:weight_entry_app/screens/home_screen/home_screen.dart';

class LoginScreenController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? loggedinuser;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  void login({required String email, required String password}) async {
    final user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    loggedinuser = _auth.currentUser;
    try {
      if (user != null) {
        Get.toNamed(AppRoutes.home_screen);
        Get.snackbar("Success Message", "Logged in successfully.");
      } else {
        Get.snackbar("Error Message", "Enter credentials properly.");
      }
    } catch (e) {
      Get.snackbar(
        'Error Creating Account',
        e.toString(),
      );
    }
  }
}
