import 'package:e_commerce_flutter/models/restaurant/category.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant.dart';
import 'package:flutter/cupertino.dart';

import 'foodItemCategory.dart';

class RestaurantCategory extends StatefulWidget {
  List<Restaurant> listRestaurant = new List();

  RestaurantCategory(this.listRestaurant);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RestaurnatCategoryState(listRestaurant);
  }
}

class _RestaurnatCategoryState extends State<RestaurantCategory> {
  List<Restaurant> listRestaurant = new List();
  _RestaurnatCategoryState(this.listRestaurant);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listRestaurant.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodItemCategory(listRestaurant[index]);
          }),
    );
  }
}
