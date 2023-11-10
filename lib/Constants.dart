import 'package:flutter/material.dart';

class Constants {
  static final buttonActivatedColor = Colors.green[400];
  static final buttonDeactivatedColor = Colors.grey[600];
  static final toggleDeactivatedColor = Colors.white;
  static final togglePositiveColor = Colors.green[400];
  static final toggleNegativeColor = Colors.red;
  static final listTileColor = Colors.grey;

  static Widget topButton({@required String title, bool activator}) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Constants.buttonActivatedColor,
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
