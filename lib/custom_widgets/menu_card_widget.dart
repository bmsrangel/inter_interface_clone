import 'package:flutter/material.dart';
import 'package:inter_interface_clone/models/card_item_model.dart';

class MenuCardWidget extends StatelessWidget {
  MenuCardWidget({
    Key key,
    @required this.screenWidth,
    @required this.itemModel,
  }) : super(key: key);

  final double screenWidth;
  final Color circleAvatarBackgroundColor = Color(0xFFFFF3E3);
  final CardItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: screenWidth * 0.285,
        height: screenWidth * 0.285,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: circleAvatarBackgroundColor,
              radius: 30.0,
              child: Icon(
                this.itemModel.iconData,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              this.itemModel.description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
