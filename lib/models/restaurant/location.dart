import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/restaurant/coordinate.dart';
import 'package:built_collection/built_collection.dart';

part 'location.g.dart';

abstract class Location implements Built<Location, LocationBuilder> {
  double get x;

  double get y;

  BuiltList<double> get coordinates;

  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  static Serializer<Location> get serializer => _$locationSerializer;
}
