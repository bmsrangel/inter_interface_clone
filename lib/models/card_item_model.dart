import 'package:flutter/widgets.dart';

class CardItemModel {
  final String description;
  final IconData iconData;
  final Function onPressed;

  CardItemModel({this.description, this.iconData, this.onPressed});
}
