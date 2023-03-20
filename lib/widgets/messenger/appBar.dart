import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 13,
      title: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                "https://scontent.famm10-1.fna.fbcdn.net/v/t39.30808-6/321775700_1508538782971105_1365271400173826271_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=_e0h3fnEqVkAX9LEsMT&tn=jFAZIlDqK8soLrVU&_nc_ht=scontent.famm10-1.fna&oh=00_AfBJT5u2FPiGyAX4QWpe7HGl9ZIZpKIkH_WX3c7QwcMiAQ&oe=63EC7976"),
          ),
          SizedBox(width: 15),
          Text(
            "Chats",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsetsDirectional.only(end: 17),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white30,
                radius: 18,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_rounded,
                    size: 20,
                  ),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundColor: Colors.white30,
                radius: 18,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    size: 20,
                  ),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
