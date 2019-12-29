import 'package:flutter/material.dart';
import 'package:my_bmi_calc/constants.dart';

class InColumn extends StatelessWidget {

  final IconData theIcon;
  final String theText;

  const InColumn({@required this.theIcon, @required this.theText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          theIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(theText, style: kLabelStyle,
        ),
      ],
    );
  }
}
