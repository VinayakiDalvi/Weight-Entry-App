import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_entry_app/screens/add_weight_screen/add_weight_screen_controller/add_weight_screen_controller.dart';

import '../../app_routes/app_routes.dart';

class AddWeightScreen extends GetWidget<AddWeightScreenController> {
  const AddWeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rng = Random();
    var k = rng.nextInt(10000);
    final fb = FirebaseDatabase.instance;
    final ref = fb.ref().child('Weight/$k');
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Weight"),
        backgroundColor: Color(0xFFEAC4A1),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
//controller: second,
                  "Weight",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                child: TextFormField(
                  controller: controller.weightController,
                  autofocus: true,
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Weight',
                    // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black26,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),

                    filled: true,
                    fillColor: Color.fromARGB(100, 241, 244, 248),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  ),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black26,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(border: Border.all()),
              //   child: TextField(
              //     controller: controller.weightController,
              //     decoration: InputDecoration(
              //         hintText: 'Enter Weight',
              //         hintStyle: TextStyle(
              //           color: Colors.black12,
              //         )),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    ref.set({
                      "Weight": controller.weightController.text,
                      // "DateTime": DateTime.now()
                    });
                    controller.weightController.clear();
                    Get.toNamed(AppRoutes.home_screen);
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w900),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
