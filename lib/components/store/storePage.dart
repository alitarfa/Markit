import 'package:e_commerce_flutter/components/foodCategory/foodCategory.dart';
import 'package:e_commerce_flutter/components/listFood/foodCardItem.dart';
import 'package:e_commerce_flutter/components/storeDishes/storeDishes.dart';
import 'package:e_commerce_flutter/models/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StorePageState();
  }

}

class _StorePageState extends State<StorePage> {


  List<Food> _listItemFood = [
    Food("", 1, ""),
    Food("", 1, ""),
    Food("", 1, ""),
    Food("", 1, "")
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xF9F9F9F9),
      body:  ListView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("We Eat",
                      style:
                      TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Text("Al Farha",
                      style:
                      TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                ],
              ),

              new Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/im.jpeg')
                      )
                  )),
            ],
          ),
          SizedBox(height: 16),
          StoreDishes(),
          SizedBox(height: 20),
          Column(
            children: _listItemFood.map((Food food) {
              return _builderItemFood();
            }).toList(),
          )
        ],
      )
    );
  }

  Widget _builderItemFood() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: FoodCardItem(),
    );
  }


}