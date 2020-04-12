import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:e_commerce_flutter/models/restaurant/menu.dart';
import 'package:built_collection/built_collection.dart';

part 'category.g.dart';

abstract class Category implements Built<Category,CategoryBuilder>{

  @nullable
  String get name;
  @nullable
  String get image;
  @nullable
  String get restaurantID;
  @nullable
  BuiltList<Menu> get menus;


  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;
  static Serializer<Category> get serializer => _$categorySerializer;

}
