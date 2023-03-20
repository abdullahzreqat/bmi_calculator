import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({Key? key}) : super(key: key);

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  double _height = 120;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: size.width*.05),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff1A1B2D),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HEIGHT",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xff656673)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    "${_height.round()}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'cm',
                    style: TextStyle(
                        color: Color(0xff656673),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: size.height*.015,
              ),
              Slider(
                  activeColor: Colors.white,
                  inactiveColor: Color(0xff656673),
                  thumbColor: Color(0xffE8144B),
                  value: _height,
                  min: 50,
                  max: 250,
                  onChanged: (value) {
                    setState(() {
                      _height = value;

                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
