import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/restaurant/option_dishes.dart';
import 'package:built_collection/built_collection.dart';

part 'menu.g.dart';

abstract class Menu implements Built<Menu, MenuBuilder> {
  String get id;

  String get name;

  String get description;

  double get basePrice;

  BuiltList<String> get tags;

  BuiltList<String> get ingredient;

  int get preparationTime;

  int get rating;

  int get avgDelivery;

  @nullable
  BuiltList<String> get dishImages;

/*
  @nullable
  OptionDishes get optionDishes;
*/

  Menu._();

  factory Menu([updates(MenuBuilder b)]) = _$Menu;

  static Serializer<Menu> get serializer => _$menuSerializer;
}
