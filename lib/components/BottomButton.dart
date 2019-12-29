import 'package:flutter/material.dart';
import 'package:my_bmi_calc/constants.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({@required this.onTap, @required this.theWordedText});

  final Function onTap;
  final String theWordedText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1555),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        child: Center(child: Text(theWordedText, style: kLargeButtonTextStyle,)),
      ),
    );
  }
}

