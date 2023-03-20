import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/bmi/calculate_button.dart';
import '../../../widgets/bmi/gender.dart';
import '../../../widgets/bmi/height.dart';
import '../../../widgets/bmi/weight_age/weight_age.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0F1E),
      bottomNavigationBar: CalculateButton(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0A0F1E),
        title: Center(
            child: Text(
          "BMI CALCULATOR",
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Color(0xff989AA2), fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
          children: <Widget>[
            Gender(),
            Height(),
            WeightAge(),
          ],
        ),
    );
  }
}
