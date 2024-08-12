import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("My Notes",style: TextStyle(color: Colors.white),),
         backgroundColor: Color(0xff201E43),
          actions: [
            IconButton(
              onPressed: ()async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushNamedAndRemoveUntil(
                    context, "Login In", (route) => false
                );
              },
              icon: Icon(Icons.logout,color: Colors.white,),
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