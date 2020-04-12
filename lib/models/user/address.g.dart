// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Address> _$addressSerializer = new _$AddressSerializer();

class _$AddressSerializer implements StructuredSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];
  @override
  final String wireName = 'Address';

  @override
  Iterable<Object> serialize(Serializers serializers, Address object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.nbr != null) {
      result
        ..add('nbr')
        ..add(serializers.serialize(object.nbr,
            specifiedType: const FullType(int)));
    }
    if (object.common != null) {
      result
        ..add('common')
        ..add(serializers.serialize(object.common,
            specifiedType: const FullType(int)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Address deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'nbr':
          result.nbr = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'common':
          result.common = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Address extends Address {
  @override
  final int nbr;
  @override
  final int common;
  @override
  final String address;

  factory _$Address([void Function(AddressBuilder) updates]) =>
      (new AddressBuilder()..update(updates)).build();

  _$Address._({this.nbr, this.common, this.address}) : super._();

  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        nbr == other.nbr &&
        common == other.common &&
        address == other.address;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, nbr.hashCode), common.hashCode), address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Address')
          ..add('nbr', nbr)
          ..add('common', common)
          ..add('address', address))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address _$v;

  int _nbr;
  int get nbr => _$this._nbr;
  set nbr(int nbr) => _$this._nbr = nbr;

  int _common;
  int get common => _$this._common;
  set common(int common) => _$this._common = common;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  AddressBuilder();

  AddressBuilder get _$this {
    if (_$v != null) {
      _nbr = _$v.nbr;
      _common = _$v.common;
      _address = _$v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Address build() {
    final _$result =
        _$v ?? new _$Address._(nbr: nbr, common: common, address: address);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
