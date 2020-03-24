import 'package:e_commerce_flutter/components/foodCategory/foodCategory.dart';
import 'package:e_commerce_flutter/components/listFood/foodCardItem.dart';
import 'package:e_commerce_flutter/models/food.dart';
import 'package:e_commerce_flutter/ui/search/serchInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomPageState();
  }
}

class _HomPageState extends State<HomePage> {
  List<Food> _listItemFood = [
    Food("", 1, ""),
    Food("", 1, ""),
    Food("", 1, ""),
    Food("", 1, "")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Market it",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                Text("Amazing Place",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ],
            ),
            Icon(
              Icons.notifications_none,
              size: 30,
              color: Colors.blueGrey,
            ),
          ],
        ),
        FoodCategory(),
        SizedBox(height: 10),
        SearchInput(),
        SizedBox(height: 20),
        Column(
          children: _listItemFood.map((Food food) {
            return _builderItemFood();
          }).toList(),
        )
      ],
    );
  }

  Widget _builderItemFood() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: FoodCardItem(),
    );
  }
}
