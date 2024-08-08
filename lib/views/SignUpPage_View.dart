
import 'package:flutter/material.dart';

import '../componentes/Button.dart';
import '../componentes/TextField.dart';
import '../componentes/TopPage.dart';

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
                  hintText: "Full Name",
                  Mycontroller: Namecontroller,
                  labelText: "Full Name",
                )),
            Padding(
                padding: EdgeInsets.only(top: 20, right: 25, left: 25),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
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
                    text: "Register",
                    onPressed: () async {
                      Navigator.of(context).pushReplacementNamed("/home");

                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I have an account?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/login");
                      },
                      child: Text(
                        "Login In",
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
