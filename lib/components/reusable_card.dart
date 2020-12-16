import 'package:flutter/material.dart';

class ReusableBox extends StatelessWidget {
  final Color color;
  final Widget childWidget;
  final Function onPress;

  ReusableBox({this.childWidget, @required this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
