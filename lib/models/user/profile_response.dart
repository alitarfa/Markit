import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:e_commerce_flutter/models/user/user.dart';


part 'profile_response.g.dart';

abstract class ProfileResponse implements Built<ProfileResponse, ProfileResponseBuilder> {

  int get status;
  User get response;

  ProfileResponse._();

  factory ProfileResponse([updates(ProfileResponseBuilder b)]) = _$ProfileResponse;

  static Serializer<ProfileResponse> get serializer => _$profileResponseSerializer;
}

