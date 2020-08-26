import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kLabeltextstyle,
        ),
      ],
    );
  }
}
