// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Restaurant> _$restaurantSerializer = new _$RestaurantSerializer();

class _$RestaurantSerializer implements StructuredSerializer<Restaurant> {
  @override
  final Iterable<Type> types = const [Restaurant, _$Restaurant];
  @override
  final String wireName = 'Restaurant';

  @override
  Iterable<Object> serialize(Serializers serializers, Restaurant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'imageProfile',
      serializers.serialize(object.imageProfile,
          specifiedType: const FullType(String)),
      'numberPhone',
      serializers.serialize(object.numberPhone,
          specifiedType: const FullType(String)),
      'available',
      serializers.serialize(object.available,
          specifiedType: const FullType(bool)),
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType: const FullType(Coordinate)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType:
              const FullType(List, const [const FullType(Category)])),
    ];

    return result;
  }

  @override
  Restaurant deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageProfile':
          result.imageProfile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberPhone':
          result.numberPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'available':
          result.available = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coordinate)) as Coordinate);
          break;
        case 'categories':
          result.categories = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(Category)]))
              as List<Category>;
          break;
      }
    }

    return result.build();
  }
}

class _$Restaurant extends Restaurant {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String address;
  @override
  final String imageProfile;
  @override
  final String numberPhone;
  @override
  final bool available;
  @override
  final Coordinate coordinates;
  @override
  final List<Category> categories;

  factory _$Restaurant([void Function(RestaurantBuilder) updates]) =>
      (new RestaurantBuilder()..update(updates)).build();

  _$Restaurant._(
      {this.id,
      this.name,
      this.description,
      this.address,
      this.imageProfile,
      this.numberPhone,
      this.available,
      this.coordinates,
      this.categories})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'description');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'address');
    }
    if (imageProfile == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'imageProfile');
    }
    if (numberPhone == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'numberPhone');
    }
    if (available == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'available');
    }
    if (coordinates == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'coordinates');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'categories');
    }
  }

  @override
  Restaurant rebuild(void Function(RestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantBuilder toBuilder() => new RestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurant &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        address == other.address &&
        imageProfile == other.imageProfile &&
        numberPhone == other.numberPhone &&
        available == other.available &&
        coordinates == other.coordinates &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                description.hashCode),
                            address.hashCode),
                        imageProfile.hashCode),
                    numberPhone.hashCode),
                available.hashCode),
            coordinates.hashCode),
        categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Restaurant')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('address', address)
          ..add('imageProfile', imageProfile)
          ..add('numberPhone', numberPhone)
          ..add('available', available)
          ..add('coordinates', coordinates)
          ..add('categories', categories))
        .toString();
  }
}

class RestaurantBuilder implements Builder<Restaurant, RestaurantBuilder> {
  _$Restaurant _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _imageProfile;
  String get imageProfile => _$this._imageProfile;
  set imageProfile(String imageProfile) => _$this._imageProfile = imageProfile;

  String _numberPhone;
  String get numberPhone => _$this._numberPhone;
  set numberPhone(String numberPhone) => _$this._numberPhone = numberPhone;

  bool _available;
  bool get available => _$this._available;
  set available(bool available) => _$this._available = available;

  CoordinateBuilder _coordinates;
  CoordinateBuilder get coordinates =>
      _$this._coordinates ??= new CoordinateBuilder();
  set coordinates(CoordinateBuilder coordinates) =>
      _$this._coordinates = coordinates;

  List<Category> _categories;
  List<Category> get categories => _$this._categories;
  set categories(List<Category> categories) => _$this._categories = categories;

  RestaurantBuilder();

  RestaurantBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _address = _$v.address;
      _imageProfile = _$v.imageProfile;
      _numberPhone = _$v.numberPhone;
      _available = _$v.available;
      _coordinates = _$v.coordinates?.toBuilder();
      _categories = _$v.categories;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Restaurant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Restaurant;
  }

  @override
  void update(void Function(RestaurantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Restaurant build() {
    _$Restaurant _$result;
    try {
      _$result = _$v ??
          new _$Restaurant._(
              id: id,
              name: name,
              description: description,
              address: address,
              imageProfile: imageProfile,
              numberPhone: numberPhone,
              available: available,
              coordinates: coordinates.build(),
              categories: categories);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Restaurant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
