import 'dart:ui';
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreen createState() => _RegistrationScreen();
}

class _RegistrationScreen extends State<RegistrationScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  final emailField = TextFormField(
    autofocus: false,
    // controller: emailController,
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,

    decoration: InputDecoration(
      hintText: "Email",
      hintStyle: TextStyle(
          color: HexColor("#1B1B1D").withOpacity(0.5),
          fontSize: 16,
          fontWeight: FontWeight.w500),
      fillColor: Colors.white,
      filled: true,
      disabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final passwordfield = TextFormField(
    autofocus: false,
    obscureText: true,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
      // contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
      hintText: "Password",
      hintStyle: TextStyle(
          color: HexColor("#1B1B1D").withOpacity(0.5),
          fontSize: 16,
          fontWeight: FontWeight.w500),
      fillColor: Colors.white,
      filled: true,
      // disabledBorder: InputBorder.none,
      // focusedBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.blue, width: 2.0),
      //     borderRadius: BorderRadius.circular(25.0)),
      errorBorder: InputBorder.none,
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final confirmPasswordField = TextFormField(
    autofocus: false,
    obscureText: true,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
      // contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
      hintText: "Confirm password",
      hintStyle: TextStyle(
          color: HexColor("#1B1B1D").withOpacity(0.5),
          fontSize: 16,
          fontWeight: FontWeight.w500),
      fillColor: Colors.white,
      filled: true,
      // disabledBorder: InputBorder.none,
      // focusedBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.blue, width: 2.0),
      //     borderRadius: BorderRadius.circular(25.0)),
      errorBorder: InputBorder.none,
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  final loginButton = Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(30),
    // color: Hexcolor("#1F319D"),
    child: MaterialButton(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      // minWidth: MediaQuery.of(context).size.width,

      onPressed: () {},
      child: Text(
        'Sign In',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            color: HexColor("#EEEDF3"),
            fontWeight: FontWeight.bold),
      ),
    ),
  );

  final loginButton2 = Container(
    width: double.infinity,
    decoration: BoxDecoration(
      // color: HexColor("#1F319D"),
      // color: HexColor("#1F319D").withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: HexColor("#1F319D"),
              blurRadius: 2.0,
              offset: Offset(1.0, 1.0),
              spreadRadius: 1.0),
          BoxShadow(
              color: HexColor("#1F319D"),
              // blurRadius: 1.0,
              offset: Offset(-2.0, -2.0),
              spreadRadius: 1.0),
        ]),
    child: TextButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F9F9F9"),
      //SingleChildScrollView
      body: Center(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/repairHomeIcon.png',
                          color: HexColor("#1F319D"),
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                    // ClipOval(
                    //   child: Image.asset("assets/images/half_logo.png",
                    //     color: HexColor("#1F319D"),
                    //     height: 100,),
                    // ),

                  ],
                ),

                //Check Container
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    // padding: EdgeInsets.fromLTRB(36.0, 0, 36.0, 0),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Create new account',
                              style: TextStyle(
                                  color: HexColor("#1B1B1D"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  fontFamily: 'Gotham'),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        emailField,
                        SizedBox(height: 25),
                        passwordfield,
                        SizedBox(height: 25),
                        confirmPasswordField,
                        SizedBox(height: 25),
                        loginButton2,
                        SizedBox(height: 40),
                        //or sign in with
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " Or sign in with -",
                              style: TextStyle(
                                // color: HexColor("#7B7B7B"),
                                  color: HexColor("#1B1B1D").withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        // social media
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //   width: 5,
                                    // ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                        "assets/socialIcon/flat-color-icons_google.png"),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //   width: 5,
                                    // ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                        "assets/socialIcon/eva_facebook-fill.png"),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //   width: 5,
                                    // ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                        "assets/socialIcon/twitter.png"),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
