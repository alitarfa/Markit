import 'package:e_commerce_flutter/components/foodCategory/foodCategory.dart';
import 'package:e_commerce_flutter/components/listFood/foodCardItem.dart';
import 'package:e_commerce_flutter/components/storeDishes/storeDishes.dart';
import 'package:e_commerce_flutter/models/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
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
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Farha Restuarant",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.asset(
                      "images/im.jpeg",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: ListView(
            padding: EdgeInsets.only(top: 16, left: 20, right: 20),
            children: <Widget>[
              SizedBox(height: 16),
              StoreDishes(),
              SizedBox(height: 20),
              Column(
                children: _listItemFood.map((Food food) {
                  return _builderItemFood(food);
                }).toList(),
              )
            ],
          )),
    );
  }

  Widget _builderItemFood(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: FoodCardItem(food),
    );
  }
}
