import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class SexWidget extends StatelessWidget {
  final String sex;
  const SexWidget(this.sex);

  @override
  Widget build(BuildContext context) {
    IconData sexIcon;
    String sexName;
    if (sex == 'M') {
      sexIcon = FontAwesomeIcons.mars;
      sexName = "Male";
    } else {
      sexIcon = FontAwesomeIcons.venus;
      sexName = "Female";
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          sexIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(sexName, style: kLabelTextStyle)
      ],
    );
  }
}
