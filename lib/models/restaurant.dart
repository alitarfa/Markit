
import 'package:e_commerce_flutter/models/address.dart';
import 'package:e_commerce_flutter/models/category.dart';
import 'package:e_commerce_flutter/models/category_dishes.dart';

class Restaurant {
  String id;
  String name;
  String description;
  String imageProfile;
  String numberPhone;
  int rating;
  int avgDelivery;
  Category category;
  Address address;
  List<String> tags;
  List<CategoryDishes> listCategoryDishes;
}