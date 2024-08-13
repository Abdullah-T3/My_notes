import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_nots/views/ForgetPassword_view.dart';
import 'package:my_nots/views/HomePage_View.dart';
import 'package:my_nots/views/SignInPage_View.dart';
import 'package:my_nots/views/SignUpPage_View.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Roboto',

      ),
      debugShowCheckedModeBanner: false,
      home:FirebaseAuth.instance.currentUser == null ? LoginPage(): Homepage(),
      routes: {
        "Login In": (context) => LoginPage(),
        "Sign Up": (context) => SignupPage(),
        "home": (context) => Homepage(),
        "Forget Password?": (context) => ForgetpasswordView(),
      },
    );

  }
}
