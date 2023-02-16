import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:weight_entry_app/app_routes/app_routes.dart';
import 'package:weight_entry_app/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';
import 'addweight.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget
// @override
// _MyAppState createState() => _MyAppState();

{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "todo app",
      theme: ThemeData(
        primaryColor: Colors.greenAccent[700],
      ),
      //home: LoginScreen(),
      initialRoute: AppRoutes.login_screen,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.zoom,
      debugShowCheckedModeBanner: false,
    );
  }
}
