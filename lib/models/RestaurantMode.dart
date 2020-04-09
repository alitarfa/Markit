import 'CategoryModel.dart';

class RestaurantModel {
  String id;
  String name;
  String description;
  String address;
  String imageProfile;
  String numberPhone;
  bool available;
 /* Coordinate coordinates;*/
  List<CategoryModel> categories;

  RestaurantModel(
      this.id,
      this.name,
      this.description,
      this.address,
      this.imageProfile,
      this.numberPhone,
      this.available,
     /* this.coordinates,*/
      this.categories);

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {

    List<CategoryModel> temp = [];
    for (int i = 0; i < json['categories'].length; i++) {
      temp.add(CategoryModel.fromJson(json['categories']));
    }

    return new RestaurantModel(
        json['id'],
        json['name'],
        json['description'],
        json['address'],
        json['imageProfile'],
        json['numberPhone'],
        json['available'],
       /* json['coordinates'],*/
        null);
  }
}

class Coordinate {
  double latitude;
  double longitude;

  Coordinate(this.latitude, this.longitude);

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(json['latitude'], json['longitude']);
  }
}
