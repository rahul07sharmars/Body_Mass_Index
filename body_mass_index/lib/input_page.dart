import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:body_mass_index/constants.dart'; 
//next task is to build slider
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
                        ? kActiveCardColor 
                        :kInActiveCardColor ,
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
                        ? kActiveCardColor 
                        : kInActiveCardColor ,
                    cardChild: IconContent(
                        genderlabel: 'FEMALE',
                        gendericon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor ,
                cardChild: Column(children: [Text("HEIGHT")],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor ,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor ,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor ,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight ,
            )
          ],
        ));
  }
}
