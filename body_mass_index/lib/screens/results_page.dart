import 'package:body_mass_index/calculate_brain.dart';
import 'package:body_mass_index/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:body_mass_index/constants.dart';
import 'package:body_mass_index/components/calculate_button.dart';

double result = 20.0;

class ResultPage extends StatelessWidget {
  //const ResultPage({Key? key}) : super(key: key);
  ResultPage({@required this.res, @required this.desc, @required this.mess});
  // final int weight;
  // final int height;
  final String res;
  final String desc;
  final String mess;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  textAlign: TextAlign.center,
                  style: kNumberTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ReusableCard(
                onPress: () {},
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      desc.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      res,
                      style: kNumberTextStyle,
                    ),
                    Text(mess, textAlign: TextAlign.center, 
                    style: klabelTextStyle),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: 'Recalculate',
        onPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
