import 'package:flutter/material.dart';
import 'package:my_nots/Responsive/UiComponanets/InfoWidget.dart';

import '../Responsive/models/DeviceInfo.dart';


class TopPage extends StatelessWidget {
  const TopPage({super.key, required this.ispressed});
  final bool ispressed;
  @override
  Widget build(BuildContext context) {
    return Infowidget(
      builder: (BuildContext context, Deviceinfo deviceinfo) {
        return Container(
            padding: EdgeInsets.only(top: deviceinfo.screenHeight * 0.04),
            width: deviceinfo.screenWidth,
            height: deviceinfo.screenHeight * 0.33,
            decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [Color(0xff201E43), Color(0xff134B70)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
            ),
            child: Column(
              children: [
                ispressed == true
                    ? Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {

                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceinfo.screenWidth * 0.31),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                      child: Image.asset("assets/images/logo.png",
                                          alignment: Alignment.center,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceinfo.screenWidth * 0.04,
                                        top: deviceinfo.screenHeight * 0.06),
                                    child: Text(
                                      "Forget Password",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              deviceinfo.screenWidth * 0.11,
                                          fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(right: deviceinfo.screenWidth * 0.034),
                                    child: Text(
                                      "Enter your Email acount to reset password",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            top: deviceinfo.screenHeight * 0.02),
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Center(
                                child: Image.asset("assets/images/logo.png",
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: deviceinfo.screenWidth * 0.06),
                              child: Text(
                                "Sign in to your Account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceinfo.screenWidth * 0.11,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: deviceinfo.screenWidth * 0.06),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sign in to  your Account",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            deviceinfo.screenWidth * 0.045,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
              ],
            ));
      },
    );
  }
}
