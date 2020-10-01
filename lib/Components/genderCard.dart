import 'package:flutter/material.dart';

import '.././constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.gender, this.symbol});
  final IconData symbol;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(symbol, size: 80.0),
      SizedBox(
        height: 15.0,
      ),
      Text(
        gender,
        style: kLabelText,
      ),
    ]);
  }
}
