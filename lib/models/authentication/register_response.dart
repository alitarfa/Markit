import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/user/user.dart';

part 'register_response.g.dart';

abstract class RegisterResponse
    implements Built<RegisterResponse, RegisterResponseBuilder> {


  int get status;

  @nullable
  User get response;

  RegisterResponse._();

  factory RegisterResponse([updates(RegisterResponseBuilder b)]) =
      _$RegisterResponse;

  static Serializer<RegisterResponse> get serializer =>
      _$registerResponseSerializer;
}
