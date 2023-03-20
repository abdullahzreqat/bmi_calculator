import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool _isMale = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding:  EdgeInsets.all(size.width*.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isMale = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: _isMale
                          ? Color(0xffD6004B).withOpacity(.4)
                          : Color(0xff101323),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.male_rounded,
                        color: Colors.white,
                        size: 100,
                      ),
                      SizedBox(
                        height: size.height*0.015,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xff656673)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width*.050,
            ), //MALE
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isMale = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: !_isMale
                          ? Color(0xffD6004B).withOpacity(.4)
                          : Color(0xff101323),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.female_rounded,
                        color: Colors.white,
                        size: 100,
                      ),
                      SizedBox(
                        height: size.height*.015,
                      ),
                      Text(
                        "FEMALE",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xff656673)),
                      ),
                    ],
                  ), //FEMALE
                ),
              ),
            ) //FEMALE
          ],
        ),
      ),
    );
  }
}
