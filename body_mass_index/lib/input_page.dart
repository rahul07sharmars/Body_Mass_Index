import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const double bottomcontainerHeight = 80.0;
const Color activecardcolor = Color(0xFF1D1E33);
const Color inactivecardcolor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}
Gender selectedgender;

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
                  //flatbutton can also we be used but it modifies properties when pressed.

                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? activecardcolor
                        : inactivecardcolor,
                    cardChild: IconContent(
                      genderlabel: 'MALE',
                      gendericon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? activecardcolor
                        : inactivecardcolor,
                    cardChild: IconContent(
                        genderlabel: 'FEMALE',
                        gendericon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: activecardcolor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activecardcolor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activecardcolor,
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
