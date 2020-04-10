// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'imagePath',
      serializers.serialize(object.imagePath,
          specifiedType: const FullType(String)),
      'restaurantID',
      serializers.serialize(object.restaurantID,
          specifiedType: const FullType(String)),
      'menus',
      serializers.serialize(object.menus,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Menu)])),
    ];

    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagePath':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantID':
          result.restaurantID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'menus':
          result.menus.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Menu)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Category extends Category {
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final String restaurantID;
  @override
  final BuiltList<Menu> menus;

  factory _$Category([void Function(CategoryBuilder) updates]) =>
      (new CategoryBuilder()..update(updates)).build();

  _$Category._({this.name, this.imagePath, this.restaurantID, this.menus})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Category', 'name');
    }
    if (imagePath == null) {
      throw new BuiltValueNullFieldError('Category', 'imagePath');
    }
    if (restaurantID == null) {
      throw new BuiltValueNullFieldError('Category', 'restaurantID');
    }
    if (menus == null) {
      throw new BuiltValueNullFieldError('Category', 'menus');
    }
  }

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        name == other.name &&
        imagePath == other.imagePath &&
        restaurantID == other.restaurantID &&
        menus == other.menus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), imagePath.hashCode),
            restaurantID.hashCode),
        menus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Category')
          ..add('name', name)
          ..add('imagePath', imagePath)
          ..add('restaurantID', restaurantID)
          ..add('menus', menus))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _imagePath;
  String get imagePath => _$this._imagePath;
  set imagePath(String imagePath) => _$this._imagePath = imagePath;

  String _restaurantID;
  String get restaurantID => _$this._restaurantID;
  set restaurantID(String restaurantID) => _$this._restaurantID = restaurantID;

  ListBuilder<Menu> _menus;
  ListBuilder<Menu> get menus => _$this._menus ??= new ListBuilder<Menu>();
  set menus(ListBuilder<Menu> menus) => _$this._menus = menus;

  CategoryBuilder();

  CategoryBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _imagePath = _$v.imagePath;
      _restaurantID = _$v.restaurantID;
      _menus = _$v.menus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Category build() {
    _$Category _$result;
    try {
      _$result = _$v ??
          new _$Category._(
              name: name,
              imagePath: imagePath,
              restaurantID: restaurantID,
              menus: menus.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'menus';
        menus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Category', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
