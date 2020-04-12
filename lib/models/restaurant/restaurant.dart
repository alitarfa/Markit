import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/restaurant/category.dart';
import 'package:built_collection/built_collection.dart';
import 'package:e_commerce_flutter/models/restaurant/location.dart';

import 'coordinate.dart';

part 'restaurant.g.dart';

abstract class Restaurant implements Built<Restaurant, RestaurantBuilder> {
  @nullable
  String get id;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  String get address;

  @nullable
  String get imageProfile;

  @nullable
  String get numberPhone;

  @nullable
  bool get available;

  @nullable
  Coordinate get coordinates;

  @nullable
  BuiltList<Category> get categories;

  @nullable
  Location get location;

  Restaurant._();

  factory Restaurant([updates(RestaurantBuilder b)]) = _$Restaurant;

  static Serializer<Restaurant> get serializer => _$restaurantSerializer;
}
