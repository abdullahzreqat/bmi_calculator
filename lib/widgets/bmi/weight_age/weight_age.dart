import 'package:bmi_calculator/widgets/bmi/weight_age/age.dart';
import 'package:bmi_calculator/widgets/bmi/weight_age/weight.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding:  EdgeInsets.all(size.width*.05),
        child: Row(
          children: <Widget>[
            Weight(),
            SizedBox(
              width: size.width * .050,
            ), //MALE
            Age(), //FEMALE
          ],
        ),
      ),
    );
  }
}
