// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/shared/question.dart';

class NextButton extends StatelessWidget {
  // final Function onPressed;

  // NextButton({
  //   required this.onPressed
  // });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(14.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          'Next',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Lato',
          ),
        ),
      ),
    );
  }
}
