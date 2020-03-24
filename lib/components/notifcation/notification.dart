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
      appBar: AppBar(title: Text("Notification")),
      body: ListView(
        children: <Widget>[
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
