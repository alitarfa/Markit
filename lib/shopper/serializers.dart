
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:e_commerce_flutter/models/ResponseModel.dart';
import 'package:e_commerce_flutter/models/RestaurantMode.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ResponseModel,
  RestaurantModel
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
