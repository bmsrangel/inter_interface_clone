import 'package:flutter/material.dart';

class NameInitialsWidget extends CircleAvatar {
  final String initials;
  final Color textColor;
  NameInitialsWidget({this.initials, this.textColor})
      : super(
            radius: 25.0,
            backgroundColor: Colors.white,
            child: Text(
              initials,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ));
}
