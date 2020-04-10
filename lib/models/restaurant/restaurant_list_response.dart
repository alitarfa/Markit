import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant.dart';
import 'package:built_collection/built_collection.dart';

part 'restaurant_list_response.g.dart';

abstract class RestaurantListResponse implements Built<RestaurantListResponse, RestaurantListResponseBuilder> {


  int get status;

  BuiltList<Restaurant> get response;

  RestaurantListResponse._();

  factory RestaurantListResponse([updates(RestaurantListResponseBuilder b)]) =
      _$RestaurantListResponse;

  static Serializer<RestaurantListResponse> get serializer =>
      _$restaurantListResponseSerializer;
}
