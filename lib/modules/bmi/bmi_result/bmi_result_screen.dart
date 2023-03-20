// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   int? height;
   int? weight;
   int? age;
   bool? gender;

  ResultScreen(
      { this.height,
       this.weight,
       this.age,
       this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0F1E),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0A0F1E),
        title: Text(
          "BMI Result",
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Color(0xff989AA2), fontWeight: FontWeight.bold),
        ),
        titleSpacing: 90,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              color: Color(0xff1A1B2D),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Text("Gender: $gender",style: TextStyle(color: Colors.white)),
              Text(
                "HEIGHT: $height",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
