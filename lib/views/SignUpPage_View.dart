import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_nots/Responsive/UiComponanets/InfoWidget.dart';
import '../componentes/Button.dart';
import '../componentes/Custom_TextButton.dart';
import '../componentes/TextField.dart';
import '../componentes/TopPage.dart';
import '../componentes/inputDecorationText.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  bool ispressd = false;
  bool ispressd2 = false;
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  TextEditingController ConfirmPasswordcontroller = TextEditingController();
  TextEditingController Namecontroller = TextEditingController();

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
              TopPage(ispressed: false,),
              Padding(
                  padding: EdgeInsets.only(
                      top: deviceInfo.screenHeight * 0.04,
                      right: deviceInfo.screenWidth * 0.06,
                      left: deviceInfo.screenWidth * 0.06),
                  child: Cust_Textfield(
                    validator: (value) {
                      if (value == null || value.isEmpty) {

                      }
                      return null;
                    },
                    Mycontroller: Namecontroller,
                    labelText: "Full Name",
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: deviceInfo.screenHeight * 0.02,
                      right: deviceInfo.screenWidth * 0.06,
                      left: deviceInfo.screenWidth * 0.06),
                  child: Cust_Textfield(
                    hintText: "Email",
                    Mycontroller: Emailcontroller,
                    labelText: "Email",
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: deviceInfo.screenHeight * 0.02,
                      right: deviceInfo.screenWidth * 0.06,
                      left: deviceInfo.screenWidth * 0.06),
                  child: Cust_Textfield(
                    Mycontroller: Passwordcontroller,
                    inputDecoration: inputdecoration(() {
                      ispressd2 = !ispressd2;
                      setState(() {});
                    }, ispressd2,"Password"),
                    MyobscureText: ispressd,
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: deviceInfo.screenHeight * 0.02,
                      right: deviceInfo.screenWidth * 0.06,
                      left: deviceInfo.screenWidth * 0.06),
                  child: Cust_Textfield(
                    Mycontroller: ConfirmPasswordcontroller,
                    inputDecoration: inputdecoration(() {
                      ispressd2 = !ispressd2;
                      setState(() {});
                    }, ispressd2,"Confirm Password"),
                    MyobscureText: ispressd,
                  )),
              SizedBox(
                height: deviceInfo.screenHeight * 0.05,
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
                  text: "Register",
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: Emailcontroller.text,
                        password: Passwordcontroller.text,
                      );
                      Navigator.of(context).pushReplacementNamed("home");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }

                  },
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: deviceInfo.screenHeight * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CustomTextbutton(text: "Login In")
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
