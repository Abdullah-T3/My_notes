import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/login", (route) => false
                );
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: Container(
          child: Text(
            "HomePage",
          ),
        ),
      )
    ;
  }
}