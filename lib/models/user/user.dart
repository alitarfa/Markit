import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'address.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  String get id;

  String get userName;

  String get numberPhone;

  int get age;

  String get email;

  String get password;

  @nullable
  String get profilePicture;

  @nullable
  Address get address;

  @nullable
  List<String> get roles;


  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  static Serializer<User> get serializer => _$userSerializer;
}
