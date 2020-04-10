import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/restaurant/option_dishes.dart';

part 'menu.g.dart';

abstract class Menu implements Built<Menu, MenuBuilder> {
  String get id;

  String get name;

  String get description;

  String get basePrice;

  List<String> get tags;

  List<String> get ingredient;

  String get preparationTime;

  String get rating;

  String get avgDelivery;

  List<String> get dishImages;

  OptionDishes get optionDishes;

  Menu._();

  factory Menu([updates(MenuBuilder b)]) = _$Menu;

  static Serializer<Menu> get serializer => _$menuSerializer;
}
