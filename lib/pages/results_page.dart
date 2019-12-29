import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bmi_calc/components/reusableCard.dart';
import 'package:my_bmi_calc/constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text("Your Result", style: kLargeResultText),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Normal", style: kResultTextStyle,),
                  Text("18.3", style: kBMIText,),
                  Text("Your BMI is low, you should eat more", style: kBMIInterpretation,)
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
