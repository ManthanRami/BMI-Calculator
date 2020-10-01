import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onTap;
  final Widget child;
  @override
  RoundIconButton({@required this.onTap, this.child});
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      onPressed: onTap,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
