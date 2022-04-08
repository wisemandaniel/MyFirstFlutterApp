// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {

 CustomRaisedButton({
   required this.child,
   this.height = 38.0,
   required this.color,
   required this.onPressed,
   required this.borderRadius
 });
  final Widget child;
  final double height;
  final MaterialStateProperty<Color> color;
  final VoidCallback onPressed;
  final MaterialStateProperty<RoundedRectangleBorder> borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
      style: ButtonStyle(
          backgroundColor: color,
          shape: borderRadius),
      // style: ElevatedButton.styleFrom(
      //   primary: Colors.white,),
      onPressed: onPressed,
      child: child,
    )
    );
  }
}
