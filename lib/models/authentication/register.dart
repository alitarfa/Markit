import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register.g.dart';

abstract class Register implements Built<Register, RegisterBuilder> {
  String get userName;

  String get email;

  String get phoneNumber;

  String get password;

  Register._();

  factory Register([updates(RegisterBuilder b)]) = _$Register;

  static Serializer<Register> get serializer => _$registerSerializer;
}
