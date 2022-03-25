import 'package:flutter/material.dart';

class LineSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 2,
        //color: Colors.white.withOpacity(0.4),
        color: Colors.red,
        margin: EdgeInsets.symmetric(vertical: 10));
  }
}
