import 'package:built_collection/src/list.dart';
import 'package:e_commerce_flutter/models/restaurant/category.dart';
import 'package:flutter/cupertino.dart';

import 'storeDishesItem.dart';

class StoreDishes extends StatefulWidget {
  List<Category> categories;

  StoreDishes(this.categories);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StoreDishesState(categories);
  }
}

class _StoreDishesState extends State<StoreDishes> {
  List<Category> categories;

  _StoreDishesState(this.categories);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return StoreDishesItem(categories[index]);
          }),
    );
  }
}
