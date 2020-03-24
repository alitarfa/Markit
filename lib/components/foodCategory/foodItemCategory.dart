import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItemCategory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FoodItemCategoryState();
  }
}

class _FoodItemCategoryState extends State<FoodItemCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          width: 110,
          child: Card(
              child: Padding(
                padding: EdgeInsets.all(3),
                  child: Row(
                    children: <Widget>[
                      Image.asset("images/pizza.png"),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Text("Name"), Text("price")],
                      )
                    ],
                  ),
              )
          ),
        ));
  }
}
