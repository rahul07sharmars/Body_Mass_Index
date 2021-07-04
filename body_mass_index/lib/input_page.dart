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

Color malecardcolor = activecardcolor;
Color femalecardcolor = activecardcolor;

//1 for male, 2 for female
void updates(int gender) {
  //male card pressed
  if (gender == 1) {
    if (malecardcolor == activecardcolor) {
      malecardcolor = inactivecardcolor;
      femalecardcolor = activecardcolor;
    } 
    else
      malecardcolor = activecardcolor;
  } else {
    if (femalecardcolor == activecardcolor) {
      femalecardcolor = inactivecardcolor;
      malecardcolor = activecardcolor;
    } 
    else
      femalecardcolor = activecardcolor;
  }
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
                  //flatbutton can also we be used but it modifies properties when pressed.
                  child: GestureDetector(
                    onTap: () {
                      print('male card is pressed');
                      setState(() {
                        updates(1);
                      });
                    },
                    child: ReusableCard(
                      colour: malecardcolor,
                      cardChild: IconContent(
                        genderlabel: 'MALE',
                        gendericon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updates(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femalecardcolor,
                      cardChild: IconContent(
                          genderlabel: 'FEMALE',
                          gendericon: FontAwesomeIcons.venus),
                    ),
                  ),
                )
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
