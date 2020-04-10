import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'option_dishes.g.dart';

abstract class OptionDishes implements Built<OptionDishes, OptionDishesBuilder> {
  String get option;
  double get priceOption;

  OptionDishes._();

  factory OptionDishes([updates(OptionDishesBuilder b)]) = _$OptionDishes;
  static Serializer<OptionDishes> get serializer => _$optionDishesSerializer;

}
