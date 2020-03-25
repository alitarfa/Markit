import 'package:e_commerce_flutter/components/notifcation/cardItemNotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotificationPageState();
  }
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "My",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text("Notifications",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),

          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
          CardItemNotification(),
        ],
      ),
    );
  }
}
