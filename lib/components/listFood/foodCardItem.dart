import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCardItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FoodCardItemState();
  }
}

class _FoodCardItemState extends State<FoodCardItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: 340,
            child: Image.asset(
              'images/im.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.black12],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Product Name",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellowAccent, size: 16),
                      Icon(Icons.star, color: Colors.yellowAccent, size: 16),
                      Icon(Icons.star, color: Colors.yellowAccent, size: 16),
                      Icon(Icons.star, color: Colors.yellowAccent, size: 16),
                      Icon(Icons.star, color: Colors.white, size: 20,),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
