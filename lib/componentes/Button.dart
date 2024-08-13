
import 'package:flutter/material.dart';

class CustButton extends StatelessWidget {
  final String text;
  final String? logo;
  final Function()? onPressed;
  CustButton({required this.text, super.key, this.logo, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: logo != null
          ? Container(
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset(logo!),
                  ),
                  SizedBox(width: 10),
                  Text(
                    text,
                  ),
                ],
              ),
            )
          : Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
