// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/app/sign_in/sign_in_button.dart';
import 'package:myapp/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500),
          ),
          SizedBox( height: 48.0, ),
         
          SignInButton(
            onPressed: () {},
            text: 'Sign in with Google',
            textColor: Colors.black87,
              color: MaterialStateProperty.all<Color>(Colors.white),
            ),

            SizedBox( height: 8.0, ),

            SignInButton(
            onPressed: () {},
            text: 'Sign in with Facebook',
            textColor: Colors.white,
              color: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            SizedBox( height: 8.0, ),

            SignInButton(
            onPressed: () {},
            text: 'Sign in with Email',
            textColor: Colors.white,
              color: MaterialStateProperty.all<Color>(Colors.teal),
            ),

            SizedBox( height: 8.0, ),
            Text(
              'Or',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
              ),
            ),

             SizedBox( height: 8.0, ),
             SignInButton(
            onPressed: () {},
            text: 'Go anonymous',
            textColor: Colors.black87,
              color: MaterialStateProperty.all<Color>(Colors.lime),
            ),
            // Image.asset('images/fb.png')
        ],
      ),
    );
  }
}
