import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  var _weight=50;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff1A1B2D),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WEIGHT",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff656673)),
            ),
            Text(
              "$_weight",
              style: TextStyle(
                  color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height*.0028,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  mini: true,
                  heroTag: "weight--",
                  onPressed: () => setState(() => _weight--),
                  backgroundColor:Color(0xff656673) ,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(width: 7),
                FloatingActionButton(
                  mini: true,
                  heroTag: "weight++",
                  onPressed: () => setState(() => _weight++),
                  backgroundColor: Color(0xff656673),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
