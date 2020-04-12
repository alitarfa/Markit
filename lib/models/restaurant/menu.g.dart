// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Menu> _$menuSerializer = new _$MenuSerializer();

class _$MenuSerializer implements StructuredSerializer<Menu> {
  @override
  final Iterable<Type> types = const [Menu, _$Menu];
  @override
  final String wireName = 'Menu';

  @override
  Iterable<Object> serialize(Serializers serializers, Menu object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'basePrice',
      serializers.serialize(object.basePrice,
          specifiedType: const FullType(double)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'ingredient',
      serializers.serialize(object.ingredient,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'preparationTime',
      serializers.serialize(object.preparationTime,
          specifiedType: const FullType(int)),
      'rating',
      serializers.serialize(object.rating, specifiedType: const FullType(int)),
      'avgDelivery',
      serializers.serialize(object.avgDelivery,
          specifiedType: const FullType(int)),
    ];
    if (object.dishImages != null) {
      result
        ..add('dishImages')
        ..add(serializers.serialize(object.dishImages,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Menu deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuBuilder();

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
        case 'basePrice':
          result.basePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'ingredient':
          result.ingredient.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'preparationTime':
          result.preparationTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'avgDelivery':
          result.avgDelivery = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dishImages':
          result.dishImages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Menu extends Menu {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double basePrice;
  @override
  final BuiltList<String> tags;
  @override
  final BuiltList<String> ingredient;
  @override
  final int preparationTime;
  @override
  final int rating;
  @override
  final int avgDelivery;
  @override
  final BuiltList<String> dishImages;

  factory _$Menu([void Function(MenuBuilder) updates]) =>
      (new MenuBuilder()..update(updates)).build();

  _$Menu._(
      {this.id,
      this.name,
      this.description,
      this.basePrice,
      this.tags,
      this.ingredient,
      this.preparationTime,
      this.rating,
      this.avgDelivery,
      this.dishImages})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Menu', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Menu', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Menu', 'description');
    }
    if (basePrice == null) {
      throw new BuiltValueNullFieldError('Menu', 'basePrice');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('Menu', 'tags');
    }
    if (ingredient == null) {
      throw new BuiltValueNullFieldError('Menu', 'ingredient');
    }
    if (preparationTime == null) {
      throw new BuiltValueNullFieldError('Menu', 'preparationTime');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('Menu', 'rating');
    }
    if (avgDelivery == null) {
      throw new BuiltValueNullFieldError('Menu', 'avgDelivery');
    }
  }

  @override
  Menu rebuild(void Function(MenuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuBuilder toBuilder() => new MenuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Menu &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        basePrice == other.basePrice &&
        tags == other.tags &&
        ingredient == other.ingredient &&
        preparationTime == other.preparationTime &&
        rating == other.rating &&
        avgDelivery == other.avgDelivery &&
        dishImages == other.dishImages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), name.hashCode),
                                    description.hashCode),
                                basePrice.hashCode),
                            tags.hashCode),
                        ingredient.hashCode),
                    preparationTime.hashCode),
                rating.hashCode),
            avgDelivery.hashCode),
        dishImages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Menu')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('basePrice', basePrice)
          ..add('tags', tags)
          ..add('ingredient', ingredient)
          ..add('preparationTime', preparationTime)
          ..add('rating', rating)
          ..add('avgDelivery', avgDelivery)
          ..add('dishImages', dishImages))
        .toString();
  }
}

class MenuBuilder implements Builder<Menu, MenuBuilder> {
  _$Menu _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  double _basePrice;
  double get basePrice => _$this._basePrice;
  set basePrice(double basePrice) => _$this._basePrice = basePrice;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  ListBuilder<String> _ingredient;
  ListBuilder<String> get ingredient =>
      _$this._ingredient ??= new ListBuilder<String>();
  set ingredient(ListBuilder<String> ingredient) =>
      _$this._ingredient = ingredient;

  int _preparationTime;
  int get preparationTime => _$this._preparationTime;
  set preparationTime(int preparationTime) =>
      _$this._preparationTime = preparationTime;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  int _avgDelivery;
  int get avgDelivery => _$this._avgDelivery;
  set avgDelivery(int avgDelivery) => _$this._avgDelivery = avgDelivery;

  ListBuilder<String> _dishImages;
  ListBuilder<String> get dishImages =>
      _$this._dishImages ??= new ListBuilder<String>();
  set dishImages(ListBuilder<String> dishImages) =>
      _$this._dishImages = dishImages;

  MenuBuilder();

  MenuBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _basePrice = _$v.basePrice;
      _tags = _$v.tags?.toBuilder();
      _ingredient = _$v.ingredient?.toBuilder();
      _preparationTime = _$v.preparationTime;
      _rating = _$v.rating;
      _avgDelivery = _$v.avgDelivery;
      _dishImages = _$v.dishImages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Menu other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Menu;
  }

  @override
  void update(void Function(MenuBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Menu build() {
    _$Menu _$result;
    try {
      _$result = _$v ??
          new _$Menu._(
              id: id,
              name: name,
              description: description,
              basePrice: basePrice,
              tags: tags.build(),
              ingredient: ingredient.build(),
              preparationTime: preparationTime,
              rating: rating,
              avgDelivery: avgDelivery,
              dishImages: _dishImages?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
        _$failedField = 'ingredient';
        ingredient.build();

        _$failedField = 'dishImages';
        _dishImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Menu', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
