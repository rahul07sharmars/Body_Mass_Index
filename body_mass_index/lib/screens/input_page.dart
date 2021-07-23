import 'package:body_mass_index/calculate_brain.dart';
import 'package:body_mass_index/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:body_mass_index/components/icon_content.dart';
import 'package:body_mass_index/components/round_icon_button.dart';
import 'package:body_mass_index/constants.dart';
import 'results_page.dart';
import 'package:body_mass_index/components/calculate_button.dart';

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
int height = 180;
int weight = 74;
int age = 19;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                //flatbutton can also we be used but it modifies properties when pressed.

                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  colour: selectedgender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
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
                      : kInActiveCardColor,
                  cardChild: IconContent(
                      genderlabel: 'FEMALE',
                      gendericon: FontAwesomeIcons.venus),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: klabelTextStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(height.toString(), style: kNumberTextStyle),
                      Text(
                        "cm ",
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 12.0, elevation: 20.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 250.0,
                      onChanged: (double newValue) {
                        print(newValue.round());
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: klabelTextStyle,
                        ),
                        Text(weight.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                press: () {
                                  setState(() {
                                    weight += 1;
                                  });
                                }),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                press: () {
                                  setState(() {
                                    weight -= 1;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: klabelTextStyle,
                        ),
                        Text(age.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                press: () {
                                  setState(() {
                                    age += 1;
                                  });
                                }),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                press: () {
                                  setState(() {
                                    age -= 1;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(
            text: "CALCULATE YOUR BMI",
            onPress: () {
              CalculateBrain calc =
                  CalculateBrain(weight: weight, height: height);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                          res: calc.CalculateBMI(),
                          desc: calc.getResult(),
                          mess: calc.getInterpretation())));
            },
          ),
        ],
      ),
    );
  }
}
