class Menu {
  String id;
  String name;
  String description;
  String basePrice;
  List<String> tags;
  List<String> ingredient;
  String preparationTime;
  String rating;
  String avgDelivery;
  List<String> dishImages;
  OptionDishes optionDishes;

  Menu(
      this.id,
      this.name,
      this.description,
      this.basePrice,
      this.tags,
      this.ingredient,
      this.preparationTime,
      this.rating,
      this.avgDelivery,
      this.dishImages,
      this.optionDishes);

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
        json['id'],
        json['name'],
        json['description'],
        json['basePrice'],
        json['tags'],
        json['ingredient'],
        json['preparationTime'],
        json['rating'],
        json['avgDelivery'],
        json['dishImages'],
        OptionDishes.fromJson(json['optionDishes']));
  }
}

class OptionDishes {
  String option;
  double priceOption;

  OptionDishes(this.option, this.priceOption);

  factory OptionDishes.fromJson(Map<String, dynamic> json) {
    return OptionDishes(json['option'], json[' priceOption']);
  }
}
