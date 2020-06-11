import 'package:flutter/material.dart';

class selectColor extends StatelessWidget {
  Color color;
  selectColor({this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(''),
        ),
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
