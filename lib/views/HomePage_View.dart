import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_nots/Responsive/UiComponanets/InfoWidget.dart';

import '../Responsive/models/DeviceInfo.dart';
import '../componentes/ListNotes.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Infowidget(
      builder: (BuildContext context, Deviceinfo deviceinfo) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              "My Notes",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Color(0xff003C43),
            actions: [],
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: NotsListView(),
            ),
          ),
          drawerScrimColor: Colors.black.withOpacity(0.5),
          endDrawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Logout"),
                  trailing: IconButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.pushNamedAndRemoveUntil(
                            context, "Login In", (route) => false);
                      },
                      icon: Icon(Icons.logout)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
