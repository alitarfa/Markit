import 'package:e_commerce_flutter/components/foodCategory/foodCategory.dart';
import 'package:e_commerce_flutter/components/listFood/foodCardItem.dart';
import 'package:e_commerce_flutter/components/profile/profile.dart';
import 'package:e_commerce_flutter/models/food.dart';
import 'package:e_commerce_flutter/ui/search/address.dart';
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
                Text("Amazing Places",
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ],
            ),
            InkWell(
              child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/im.jpeg')))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            )

          ],
        ),
        Addresses(),
        FoodCategory(),
        SizedBox(height: 10),
        SearchInput(),
        SizedBox(height: 20),
        Column(
          children: _listItemFood.map((Food food) {
            return _builderItemFood(food);
          }).toList(),
        )
      ],
    );
  }

  Widget _builderItemFood(food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: FoodCardItem(food),
    );
  }
}
