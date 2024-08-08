import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../componentes/Button.dart';
import '../componentes/TextField.dart';
import '../componentes/TopPage.dart';



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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Toppage(),
            Padding(
                padding: EdgeInsets.only(top: 40, right: 25, left: 25),
                child: Cust_Textfield(
                  hintText: "Email",
                  Mycontroller: Emailcontroller,
                  labelText: "Email",
                )),
            Padding(
                padding: EdgeInsets.only(top: 20, right: 25, left: 25),
                child: Cust_Textfield(
                  hintText: "Password",
                  Mycontroller: Passwordcontroller,
                  labelText: "Password",
                  inputDecoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          ispressd = !ispressd;
                          setState(() {});
                        },
                        icon: Icon(ispressd
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    labelText: "Password",
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                  MyobscureText: ispressd,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Color(0xffa5c85a),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffbee562),
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Expanded(
                  child: CustButton(
                    text: "Login", onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/home");
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
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Row(
                children: [
                  Expanded(
                      child: CustButton(
                        logo: "images/facebook.png",
                        text: "Facebook",
                        onPressed: () {},
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                  Expanded(
                      child: CustButton(
                        logo: "images/google.png",
                        text: "Google",
                        onPressed: () {},
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/signup");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Color(0xffa5c85a),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
