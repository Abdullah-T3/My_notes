import 'package:flutter/material.dart';
import 'package:my_nots/views/HomePage_View.dart';
import 'package:my_nots/views/SignInPage_View.dart';
import 'package:my_nots/views/SignUpPage_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignupPage(),
        "/home": (context) => Homepage(),
      },
    );
    throw UnimplementedError();
  }}
