import 'package:flutter/material.dart';

const labeltextstyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8E8E99),
);

class Cardcontents extends StatelessWidget {
  final String cardtext;
  final IconData typeoficon;
  Cardcontents({@required this.typeoficon, @required this.cardtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          typeoficon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          cardtext,
          style: labeltextstyle,
        ),
      ],
    );
  }
}
