import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cust_Textfield extends StatelessWidget {

  const Cust_Textfield({super.key,   this.hintText,  required this.Mycontroller, this.labelText,  this.inputDecoration,this.MyobscureText, this.validator});
  final String ?hintText,labelText;
  final InputDecoration? inputDecoration;
  final bool ?MyobscureText;
  final TextEditingController Mycontroller;
  final validator;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        cursorColor: Color(0xff000000),
        obscureText:MyobscureText==null ? false: MyobscureText!,
        controller: Mycontroller,
        decoration: inputDecoration ==null ?  InputDecoration(

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          enabledBorder:  OutlineInputBorder(

            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),

          labelStyle: TextStyle(color: Colors.grey),
          label: Text(labelText!),
          alignLabelWithHint: true,
          hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
        ):
        inputDecoration
    );
  }
}
