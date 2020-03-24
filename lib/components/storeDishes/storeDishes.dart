import 'package:e_commerce_flutter/models/category.dart';
import 'package:flutter/cupertino.dart';

import 'storeDishesItem.dart';

class StoreDishes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StoreDishesState();
  }
}

class _StoreDishesState extends State<StoreDishes> {
  List<Category> _category = [new Category("", 1, ""),new Category("", 1, ""),new Category("", 1, ""),new Category("", 1, ""),new Category("", 1, "")];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _category.length,
          itemBuilder: (BuildContext context, int index) {
            return StoreDishesItem();
          }),
    );
  }
}
