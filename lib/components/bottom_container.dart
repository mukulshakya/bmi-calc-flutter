import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final String containerTitle;
  final Function onTap;
  BottomContainer({@required this.containerTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: Color(0xFFEB1555),
        width: double.infinity,
        height: 60.0,
        child: Center(
          child: Text(
            containerTitle,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
