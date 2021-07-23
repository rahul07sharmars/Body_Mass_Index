
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class RoundIconButton extends StatelessWidget {
  //const RoundIconButton({Key key}) : super(key: key);
  RoundIconButton({@required this.icon, @required this.press});
  final IconData icon;
  final press;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: press,
      elevation: 10.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

