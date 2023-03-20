// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NavigateBar extends StatefulWidget {
  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  List<BottomNavigationBarItem> navigateItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.chat_bubble,
      ),
      label: "Chats",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.videocam_rounded,
      ),
      label: "Calls",
    ),
    BottomNavigationBarItem(
        tooltip: "1",
        icon: Icon(
          Icons.people,
        ),
        label: "Sharing"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.amp_stories_rounded,
        ),
        label: "Stories")
  ];

  int iconIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      currentIndex: iconIndex,
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      items: navigateItems,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      selectedIconTheme: IconThemeData(color: Colors.white, size: 30),
      onTap: (i) {
        setState(() {
          iconIndex = i;
        });
      },
    );

    /*Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                  size: 29,
                )),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 5.0, end: 5),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 8.5,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 5.0, end: 5),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 7.5,
                child: Text(
                  '3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam_rounded,
                  color: Colors.white,
                  size: 32,
                )),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 5.0, end: 5),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 8.5,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 5.0, end: 5),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 7.5,
                child: Text(
                  '3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.people,
              color: Colors.white,
              size: 32,
            )),
        Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.amp_stories_rounded,
                  color: Colors.white,
                  size: 29,
                )),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 5.0, end: 5),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 4.5,
              ),
            )
          ],
        )
      ],
    );*/
  }
}
