import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  var _age = 20;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff1A1B2D),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "AGE",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff656673)),
            ),
            Text(
              "$_age",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "age--",
                  mini: true,
                  onPressed: () => setState(() => _age--),
                  backgroundColor: Color(0xff656673),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(width: 7),
                FloatingActionButton(
                  mini: true,
                  heroTag: "age++",
                  onPressed: () => setState(() => _age++),
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
