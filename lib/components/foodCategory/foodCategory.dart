import 'package:e_commerce_flutter/models/category.dart';
import 'package:flutter/cupertino.dart';

import 'foodItemCategory.dart';

class FoodCategory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FoodCategoryState();
  }
}

class _FoodCategoryState extends State<FoodCategory> {
  List<Category> _category = [new Category("", 1, ""),new Category("", 1, ""),new Category("", 1, ""),new Category("", 1, ""),new Category("", 1, "")];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 70,
      width: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _category.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodItemCategory();
          }),
    );
  }
}
