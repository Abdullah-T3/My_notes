import 'package:flutter/material.dart';

import 'deleteButton.dart';

ListTile shownotesdata() {
  return ListTile(
    title: Text(
      "title",
      style: TextStyle(fontSize: 26, color: Colors.black),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 14),
      child: Text("subtitle",
          style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.6))),
    ),
    trailing: deletebutton(),
  );
}
