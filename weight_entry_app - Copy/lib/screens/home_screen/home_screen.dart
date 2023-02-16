import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:weight_entry_app/app_routes/app_routes.dart';
import 'package:weight_entry_app/screens/home_screen/controller/home_screen_controller.dart';

class HomeScreen extends GetWidget<HomeScreenController> {
  HomeScreen({Key? key}) : super(key: key);
  final fb = FirebaseDatabase.instance;
  var l;
  var g;
  var k;
  @override
  Widget build(BuildContext context) {
    final ref = fb.ref().child('Weight');
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFEAC4A1),
          onPressed: () {
            Get.toNamed(AppRoutes.add_weight_screen);
          },
          child: Icon(
            Icons.add,
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Weights',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Color(0xFFEAC4A1),
        ),
        body: FirebaseAnimatedList(
            query: ref,
            shrinkWrap: true,
            itemBuilder: (context, snapshot, animation, index) {
              var v = snapshot.value.toString();
              print(v);
              g = v.replaceAll(RegExp("{|}|Weight: "), "");
              g.trim();
              // l = g.split(',');
              return GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                ),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black26,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Get.back();
                                },
                                color: Color.fromARGB(100, 255, 89, 99),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () async {
                                  await controller.upd(snapshot.key);
                                  Get.back();
                                },
                                color: Color.fromARGB(100, 255, 89, 99),
                                child: Text(
                                  "Update",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ));
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Color(0xFFEAC4A1).withOpacity(0.2),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Color.fromARGB(150, 255, 0, 0),
                        ),
                        onPressed: () {
                          ref.child(snapshot.key!).remove();
                        },
                      ),
                      title: Text(
                        g,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // subtitle: Text(
                      //   g,
                      //   style: TextStyle(
                      //     fontSize: 25,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ),
                  ),
                ),
              );
            }));
  }
}
