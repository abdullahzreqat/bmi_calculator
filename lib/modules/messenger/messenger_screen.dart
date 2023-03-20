import 'package:flutter/material.dart';

import '../../widgets/messenger/NavigationBar.dart';
import '../../widgets/messenger/latestChats.dart';
import '../../widgets/messenger/onlineContacts.dart';
import '../../widgets/messenger/searchBar.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleSpacing: 13,
          title: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-6/321775700_1508538782971105_1365271400173826271_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=UtIa4HvanyYAX95IgIK&tn=jFAZIlDqK8soLrVU&_nc_ht=scontent.famm7-1.fna&oh=00_AfAX4xzZwCdk_pXDRZ8xYe-Bc0rEak2Kh04jvjRbAhy0Ew&oe=63F856F6"),
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
        ),
        bottomNavigationBar: NavigateBar(),
        body: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
          child: ListView(
            children: [
              SizedBox(
                height: 8,
              ),
              SearchBar(),
              SizedBox(
                height: 10,
              ),
              OnlineContact(), //OnlineContactsRow
              SizedBox(height: 10),
              LatestChat(), //LatestChatsColumn
            ],
          ),
        ));
  }
}
