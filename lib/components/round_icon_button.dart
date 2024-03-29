import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        fillColor: Color(0xFF4C4F5E),
        shape: CircleBorder(),
        elevation: 6.0,
        child: Icon(icon),
        onPressed: onPress);
  }
}