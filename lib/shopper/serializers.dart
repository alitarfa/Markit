import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:e_commerce_flutter/models/authentication/register.dart';
import 'package:e_commerce_flutter/models/authentication/register_response.dart';
import 'package:e_commerce_flutter/models/restaurant/category.dart';
import 'package:e_commerce_flutter/models/restaurant/coordinate.dart';
import 'package:e_commerce_flutter/models/restaurant/location.dart';
import 'package:e_commerce_flutter/models/restaurant/menu.dart';
import 'package:e_commerce_flutter/models/restaurant/option_dishes.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant_list_response.dart';
import 'package:e_commerce_flutter/models/user/address.dart';
import 'package:e_commerce_flutter/models/user/user.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Coordinate,
  RestaurantListResponse,
  Restaurant,
  OptionDishes,
  Menu,
  Category,
  User,
  Address,
  Register,
  RegisterResponse,
  Location
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
