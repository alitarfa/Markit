import 'Menu.dart';

class CategoryModel {
  String name;
  String image;
  String restaurantID;
  List<Menu> menus;

  CategoryModel(this.name, this.image, this.restaurantID, this.menus);

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    List<Menu> temp = [];
    for (int i = 0; i < json['menus'].length; i++) {
      temp.add(Menu.fromJson(json['menus']));
    }
    return CategoryModel(
        json['name'], json['image'], json['restaurantID'], temp);
  }
}
