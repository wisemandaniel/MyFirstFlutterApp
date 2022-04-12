// ignore_for_file: implementation_imports, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:myapp/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required asssetName,
    required String text, 
    required MaterialStateProperty<Color> color, 
    required Color textColor, 
    required VoidCallback onPressed
  }) : super(
    color: color,
    borderRadius: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(
                       Radius.circular(4.0),
            ),
          )),
    onPressed: onPressed,
    height: 42.0,
    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                 asssetName,
                ),
                Text(
                  text, 
                  style: TextStyle(color: textColor, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset(
                       asssetName,
                ),
                ),
              ],
            ),
  );
}