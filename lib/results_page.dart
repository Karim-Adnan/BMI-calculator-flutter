import 'input_page.dart';
import 'package:BMI_calculator/constants.dart';
import 'file:///D:/apps/BMI-calculator-flutter/lib/screens/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Text('Your Result',
                textAlign: TextAlign.left,
                style:  kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Normal',
                      style: kResultTextStyle,
                    ),
                    Text('18.3',
                      style: kBMITextStyle,
                    ),
                    Text('Your BMI results is quite low. Eat more!',
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
              child: BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
          )
        ],
      ),
    );
  }
}
