import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Responsive/UiComponanets/InfoWidget.dart';
import '../componentes/Button.dart';
import '../componentes/Custom_TextButton.dart';
import '../componentes/TextField.dart';
import '../componentes/TopPage.dart';
import '../componentes/inputDecorationText.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ispressd = false;
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Infowidget(builder: (context, deviceInfo) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              TopPage(
                ispressed: false,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: deviceInfo.screenHeight * 0.05,
                      right: deviceInfo.screenWidth * 0.06,
                      left: deviceInfo.screenWidth * 0.06),
                  child: Cust_Textfield(
                    Mycontroller: Emailcontroller,
                    labelText: "Email",
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: deviceInfo.screenHeight * 0.025,
                      right: deviceInfo.screenWidth * 0.06,
                      left: deviceInfo.screenWidth * 0.06),
                  child: Cust_Textfield(
                    Mycontroller: Passwordcontroller,
                    inputDecoration: inputdecoration(() {
                      ispressd = !ispressd;
                      setState(() {});
                    }, ispressd, "Password"),
                    MyobscureText: ispressd,
                  )),
              Padding(
                padding: EdgeInsets.only(
                    right: deviceInfo.screenWidth * 0.05,
                    top: deviceInfo.screenHeight * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [CustomTextbutton(text: "Forget Password?")],
                ),
              ),
              SizedBox(
                height: deviceInfo.screenHeight * 0.025,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffbee562),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: deviceInfo.screenHeight * 0.09,
                width: deviceInfo.screenWidth * 0.90,
                child: Expanded(
                    child: CustButton(
                  text: "Login",
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: Emailcontroller.text,
                              password: Passwordcontroller.text);
                      Navigator.of(context).pushReplacementNamed("home");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                    Navigator.of(context).pushReplacementNamed("home");
                  },
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Or login with",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: deviceInfo.screenWidth * 0.1,
                    right: deviceInfo.screenWidth * 0.1),
                child: Row(
                  children: [
                    CustButton(
                      logo: "assets/images/facebook.png",
                      text: "Facebook",
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: deviceInfo.screenWidth * 0.14,
                    ),
                    CustButton(
                      logo: "assets/images/google.png",
                      text: "Google",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: deviceInfo.screenHeight * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CustomTextbutton(text: "Sign Up")
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
