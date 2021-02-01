import 'package:flutter/material.dart';

class TotalAmountWidget extends StatelessWidget {
  const TotalAmountWidget({
    Key key,
    @required this.textStyle,
    @required this.total,
  }) : super(key: key);

  final TextStyle textStyle;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Saldo em conta',
          style: textStyle,
        ),
        const SizedBox(height: 3.0),
        Row(
          children: [
            Text(
              'R\$ ${this.total}',
              style: textStyle.copyWith(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
      ],
    );
  }
}
