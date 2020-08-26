import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'constants.dart';

class Resultpage extends StatelessWidget {
  Resultpage({this.bmiresult, this.resultText, this.interpretation});
  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActivecardcolour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resulttextStyle,
                  ),
                  Text(
                    bmiresult,
                    style: kBMItextSTYLE,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomcontainercolour,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              margin: EdgeInsets.only(top: 5),
              width: double.infinity,
              height: kBottombarheight,
            ),
          ),
        ],
      ),
    );
  }
}
