import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toppage extends StatelessWidget {
  const Toppage({super.key});

  @override
  Widget build(BuildContext context) {
    return            Container(
        padding: EdgeInsets.only(top: 40),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.33,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff003566), Color(0xff001d3d)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Image.asset("images/logo.png",
                          alignment: Alignment.center,
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    "Sign in to  your Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sign in to  your Account",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

}