import 'package:flutter/cupertino.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _NotificationPageState();
  }
}


class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Notification"),
    );
  }

}