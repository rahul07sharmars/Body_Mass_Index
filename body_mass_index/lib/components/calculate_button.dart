import 'package:flutter/material.dart';
import 'package:body_mass_index/constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.text, @required this.onPress});
  final String text;
  final Function onPress;
  //const CalculateButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(primary: Colors.white),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
          ],
        ),
      ),
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: kBottomContainerHeight,
    );
  }
}