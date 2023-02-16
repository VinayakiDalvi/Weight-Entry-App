import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_entry_app/screens/login_screen/contoller/login_screen_controller.dart';

class LoginScreen extends GetWidget<LoginScreenController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEAC4A1),
                    Color(0xFFFFE5B5),
                    Color(0xFFEAC4A1)
                  ],
                  stops: [0, 0.5, 1],
                  begin: AlignmentDirectional(-1, -1),
                  end: AlignmentDirectional(1, 1),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width / 1.2,
                            height: height / 13,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6,
                                  color: Color(0xFFD1A06B),
                                  offset: Offset(0, 2),
                                  spreadRadius: 7,
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 10),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  width: width / 1.2,
                                  height: height / 1.8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 6,
                                        color: Color(0xFFD1A06B),
                                        offset: Offset(0, 2),
                                        spreadRadius: 7,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    // mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 20),
                                        child: Text(
                                          'Enter your details to sign in',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 16, 20, 0),
                                        child: TextFormField(
                                          controller:
                                              controller.emailController,
                                          // autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Email',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD4DEE8),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD4DEE8),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                          textAlign: TextAlign.center,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 20, 0),
                                        child: TextFormField(
                                          controller:
                                              controller.passwordController,
                                          // autofocus: true,
                                          //obscureText: passwordVisibility,
                                          decoration: InputDecoration(
                                            hintText: 'Password',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                            // suffixIcon: InkWell(
                                            //   onTap: () => setState(
                                            //     () => passwordVisibility =
                                            //         !passwordVisibility,
                                            //   ),
                                            //   focusNode: FocusNode(
                                            //       skipTraversal: true),
                                            //   child: Icon(
                                            //     passwordVisibility
                                            //         ? Icons.visibility_outlined
                                            //         : Icons
                                            //             .visibility_off_outlined,
                                            //     color: Color(0xFF757575),
                                            //     size: 22,
                                            //   ),
                                            // ),
                                          ),
                                          textAlign: TextAlign.center,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                        ),
                                      ),
                                      // GestureDetector(
                                      //   onTap: () {
                                      //     Get.toNamed("/forgot");
                                      //   },
                                      //   child: Align(
                                      //     alignment:
                                      //         AlignmentDirectional(-1, 0),
                                      //     child: Padding(
                                      //       padding:
                                      //           EdgeInsetsDirectional.fromSTEB(
                                      //               23, 12, 0, 0),
                                      //       child: Text(
                                      //         'Forgot Passoword',
                                      //         textAlign: TextAlign.start,
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 16, 20, 0),
                                        child: SizedBox(
                                          width: width / 2,
                                          child: TextButton(
                                            onPressed: () {
                                              controller.login(
                                                  email: controller
                                                      .emailController.text,
                                                  password: controller
                                                      .passwordController.text);
                                            },
                                            child: Text("Sign in",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            style: TextButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                elevation: 2,
                                                primary: Colors.black,
                                                backgroundColor:
                                                    Color(0xffF09670)),
                                          ),
                                        ),
                                      ),
                                      // ),
                                      // Padding(
                                      //   padding: EdgeInsetsDirectional.fromSTEB(
                                      //       0, 10, 0, 0),
                                      //   child: Text(
                                      //     '-Sign in with Google-',
                                      //     textAlign: TextAlign.center,
                                      //   ),
                                      // ),
                                      // Padding(
                                      //   padding: EdgeInsetsDirectional.fromSTEB(
                                      //       0, 10, 0, 0),
                                      //   child: CircleAvatar(
                                      //     radius: 18,
                                      //     backgroundColor: Color(0xffF09670),
                                      //     child: IconButton(
                                      //       icon: FaIcon(
                                      //         FontAwesomeIcons.google,
                                      //         color: Colors.white,
                                      //         size: 18,
                                      //       ),
                                      //       onPressed: () {
                                      //         print('IconButton pressed ...');
                                      //       },
                                      //     ),
                                      //   ),
                                      // ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 10, 0, 0),
                                            child: Text(
                                              'Don\'t havve an account ? ',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print("Go to signUp");
                                            },
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Text(
                                                '  Register here',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// TextFormField(
// controller: controller.emailController,
// obscureText: false,
// decoration: InputDecoration(
// hintText: 'Email',
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFD4DEE8),
// width: 2,
// ),
// borderRadius: BorderRadius.circular(18),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFD4DEE8),
// width: 2,
// ),
// borderRadius: BorderRadius.circular(18),
// ),
// ),
// textAlign: TextAlign.center,
// keyboardType: TextInputType.emailAddress,
// ),
// TextFormField(
// controller: controller.passwordController,
// obscureText: false,
// decoration: InputDecoration(
// hintText: 'Password',
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFD4DEE8),
// width: 2,
// ),
// borderRadius: BorderRadius.circular(18),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFD4DEE8),
// width: 2,
// ),
// borderRadius: BorderRadius.circular(18),
// ),
// ),
// textAlign: TextAlign.center,
// keyboardType: TextInputType.emailAddress,
// ),
// TextButton(
// onPressed: () {
// print(controller.emailController.text);
// controller.login(
// email: controller.emailController.text,
// password: controller.emailController.text);
// },
// child: Text("Login")),
// ],
// ),
