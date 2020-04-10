import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:e_commerce_flutter/models/restaurant/menu.dart';
import 'package:built_collection/built_collection.dart';

part 'category.g.dart';

abstract class Category implements Built<Category,CategoryBuilder>{
  String get name;
  String get imagePath;
  String get restaurantID;
  BuiltList<Menu> get menus;

  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;
  static Serializer<Category> get serializer => _$categorySerializer;

}
