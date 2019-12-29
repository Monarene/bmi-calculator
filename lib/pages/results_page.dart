import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bmi_calc/components/reusableCard.dart';
import 'package:my_bmi_calc/constants.dart';
import 'package:my_bmi_calc/components/BottomButton.dart';

class ResultPage extends StatelessWidget {

  final bmiResult;
  final bmiInterpretation;
  final resultText;

  ResultPage({@required this.bmiResult, @required this.bmiInterpretation, @required this.resultText});

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
                  Text(resultText, style: kResultTextStyle,),
                  Text(bmiResult, style: kBMIText,),
                  Text(bmiInterpretation, style: kBMIInterpretation,)
                ],
              ),

            ),
          ),
          BottomButton(
            onTap: (){
              Navigator.pop(context);
            },theWordedText: "RE-CALCULATE",
          )
        ],
      ),
    );
  }
}
