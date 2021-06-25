import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const double bottomcontainerHeight = 80.0;
const Color color_of_card = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: color_of_card,
                    cardChild: IconContent(
                      genderlabel: 'MALE',
                      gendericon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: color_of_card,
                    cardChild: IconContent(
                        genderlabel: 'FEMALE',
                        gendericon: FontAwesomeIcons.venus),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: color_of_card,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: color_of_card,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: color_of_card,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomcontainerHeight,
            )
          ],
        ));
  }
}
