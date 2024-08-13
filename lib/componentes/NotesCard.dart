import 'package:flutter/material.dart';
import 'package:my_nots/Responsive/UiComponanets/InfoWidget.dart';
import '../Responsive/models/DeviceInfo.dart';
import 'ShowNotesData.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key});
  @override
  Widget build(BuildContext context) {
    return Infowidget(builder: (BuildContext context, Deviceinfo deviceinfo) {
      return Container(
        padding: EdgeInsets.only(top: deviceinfo.screenHeight * 0.02, bottom: deviceinfo.screenHeight * 0.02, left: deviceinfo.screenWidth* 0.05),
        decoration: BoxDecoration(
          color: Color(0xff96CEB4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          highlightColor: Colors.black.withOpacity(0.2),
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              shownotesdata(),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("data",
                    style: TextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.6))),
              ),
            ],
          ),
        ),
      );
    });
  }
}
