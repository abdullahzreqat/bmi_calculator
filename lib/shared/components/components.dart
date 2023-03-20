import 'package:flutter/material.dart';

Widget defaultButton(
    {required Color buttonColor,
    required String text,
    Color overColor = Colors.grey,
    Color textColor = Colors.white70,
    InteractiveInkFeatureFactory splash = NoSplash.splashFactory,
    VoidCallback? pressFunction,
    int shadow = 15}) {
  pressFunction ?? () {};
  return ElevatedButton(
      style: ButtonStyle(
          overlayColor: MaterialStatePropertyAll(overColor),
          splashFactory: splash,
          elevation: MaterialStatePropertyAll(15),
          backgroundColor: MaterialStateProperty.all(buttonColor)),
      onPressed: pressFunction,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ));
}
