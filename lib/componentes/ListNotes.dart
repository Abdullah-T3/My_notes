import 'package:flutter/material.dart';
import 'package:my_nots/componentes/NotesCard.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: const Customcard(),
            );
          },
        )
    );
  }
}