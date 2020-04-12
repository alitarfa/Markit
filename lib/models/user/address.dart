import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  @nullable
  int get nbr;

  @nullable
  int get common;

  @nullable
  String get address;

  Address._();

  factory Address([updates(AddressBuilder b)]) = _$Address;

  static Serializer<Address> get serializer => _$addressSerializer;
}
