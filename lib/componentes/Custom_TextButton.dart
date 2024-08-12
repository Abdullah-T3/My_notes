import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget  {
   CustomTextbutton({super.key, required this.text});
  final String text ;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          if(text == "Forget Password?"){
            Navigator.of(context).pushNamed(text);

          }
          Navigator.of(context).pushReplacementNamed(text);
        },
        child: Text(
          text,
          style: TextStyle(
              color: Color(0xffa5c85a),
              fontWeight: FontWeight.bold),
        ));
  }
}
