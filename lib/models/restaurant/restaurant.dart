import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/restaurant/category.dart';

import 'coordinate.dart';

part 'restaurant.g.dart';

abstract class Restaurant implements Built<Restaurant,RestaurantBuilder> {
  String get id;
  String get name;
  String get description;
  String get address;
  String get imageProfile;
  String get numberPhone;
  bool   get available;
  Coordinate get coordinates;
  List<Category> get categories;

  Restaurant._();

  factory Restaurant([updates(RestaurantBuilder b)]) = _$Restaurant;
  static Serializer<Restaurant> get serializer => _$restaurantSerializer;

}


