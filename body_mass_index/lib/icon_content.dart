import 'package:body_mass_index/constants.dart';
import 'package:flutter/material.dart';



class IconContent extends StatelessWidget {
  const IconContent({@required this.genderlabel, @required this.gendericon});

  final String genderlabel;
  final IconData gendericon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gendericon,
          size: 80.0,
        ),
        SizedBox(height: 16),
        Text(
          genderlabel,
          style: labelTextStyle,
        )
      ],
    );
  }
}
