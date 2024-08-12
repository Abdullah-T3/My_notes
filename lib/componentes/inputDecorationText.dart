import 'package:flutter/material.dart';


InputDecoration inputdecoration (VoidCallback? onpressed,bool ispressd) {
  return InputDecoration(
    suffixIcon: IconButton(
        onPressed:onpressed,

        icon: Icon(ispressd
            ? Icons.visibility
            : Icons.visibility_off)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 0.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 0.5),
    ),
    labelStyle: TextStyle(
      color: Colors.grey,
    ),
    labelText: "Password",
    alignLabelWithHint: true,
    hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 10,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'),
  );
}

