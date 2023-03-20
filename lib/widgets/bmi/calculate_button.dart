import 'package:flutter/material.dart';
import '../../modules/bmi/bmi_result/bmi_result_screen.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 65,
      decoration: BoxDecoration(
          color: Color(0xffE8144B).withOpacity(.4),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
            overlayColor:
                MaterialStatePropertyAll(Color(0xff656673).withOpacity(.5)),
            splashFactory: NoSplash.splashFactory),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ResultScreen()));
        },
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: size.height*.003),
          child: Text(
            "CALCULATE",
            style: TextStyle(
                color: Colors.white.withOpacity(.8),
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
