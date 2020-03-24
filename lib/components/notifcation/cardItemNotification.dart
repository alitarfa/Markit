import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItemNotification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardItemNotificationState();
  }
}

class _CardItemNotificationState extends State<CardItemNotification> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        child: Container(
            height: 100,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Boooom You are the Winner",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "We are very .... to announce that you are the winner for this summer ............sssssssssss",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("20-12-2020"),
                      Text("From : MarkIt")
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
