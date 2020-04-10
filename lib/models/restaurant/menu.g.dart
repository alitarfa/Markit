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
          specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType: const FullType(List, const [const FullType(String)])),
      'ingredient',
      serializers.serialize(object.ingredient,
          specifiedType: const FullType(List, const [const FullType(String)])),
      'preparationTime',
      serializers.serialize(object.preparationTime,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(String)),
      'avgDelivery',
      serializers.serialize(object.avgDelivery,
          specifiedType: const FullType(String)),
      'dishImages',
      serializers.serialize(object.dishImages,
          specifiedType: const FullType(List, const [const FullType(String)])),
      'optionDishes',
      serializers.serialize(object.optionDishes,
          specifiedType: const FullType(OptionDishes)),
    ];

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
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
        case 'ingredient':
          result.ingredient = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
        case 'preparationTime':
          result.preparationTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avgDelivery':
          result.avgDelivery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dishImages':
          result.dishImages = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
        case 'optionDishes':
          result.optionDishes.replace(serializers.deserialize(value,
              specifiedType: const FullType(OptionDishes)) as OptionDishes);
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
  final String basePrice;
  @override
  final List<String> tags;
  @override
  final List<String> ingredient;
  @override
  final String preparationTime;
  @override
  final String rating;
  @override
  final String avgDelivery;
  @override
  final List<String> dishImages;
  @override
  final OptionDishes optionDishes;

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
      this.dishImages,
      this.optionDishes})
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
    if (dishImages == null) {
      throw new BuiltValueNullFieldError('Menu', 'dishImages');
    }
    if (optionDishes == null) {
      throw new BuiltValueNullFieldError('Menu', 'optionDishes');
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
        dishImages == other.dishImages &&
        optionDishes == other.optionDishes;
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
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                                        description.hashCode),
                                    basePrice.hashCode),
                                tags.hashCode),
                            ingredient.hashCode),
                        preparationTime.hashCode),
                    rating.hashCode),
                avgDelivery.hashCode),
            dishImages.hashCode),
        optionDishes.hashCode));
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
          ..add('dishImages', dishImages)
          ..add('optionDishes', optionDishes))
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

  String _basePrice;
  String get basePrice => _$this._basePrice;
  set basePrice(String basePrice) => _$this._basePrice = basePrice;

  List<String> _tags;
  List<String> get tags => _$this._tags;
  set tags(List<String> tags) => _$this._tags = tags;

  List<String> _ingredient;
  List<String> get ingredient => _$this._ingredient;
  set ingredient(List<String> ingredient) => _$this._ingredient = ingredient;

  String _preparationTime;
  String get preparationTime => _$this._preparationTime;
  set preparationTime(String preparationTime) =>
      _$this._preparationTime = preparationTime;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  String _avgDelivery;
  String get avgDelivery => _$this._avgDelivery;
  set avgDelivery(String avgDelivery) => _$this._avgDelivery = avgDelivery;

  List<String> _dishImages;
  List<String> get dishImages => _$this._dishImages;
  set dishImages(List<String> dishImages) => _$this._dishImages = dishImages;

  OptionDishesBuilder _optionDishes;
  OptionDishesBuilder get optionDishes =>
      _$this._optionDishes ??= new OptionDishesBuilder();
  set optionDishes(OptionDishesBuilder optionDishes) =>
      _$this._optionDishes = optionDishes;

  MenuBuilder();

  MenuBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _basePrice = _$v.basePrice;
      _tags = _$v.tags;
      _ingredient = _$v.ingredient;
      _preparationTime = _$v.preparationTime;
      _rating = _$v.rating;
      _avgDelivery = _$v.avgDelivery;
      _dishImages = _$v.dishImages;
      _optionDishes = _$v.optionDishes?.toBuilder();
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
              tags: tags,
              ingredient: ingredient,
              preparationTime: preparationTime,
              rating: rating,
              avgDelivery: avgDelivery,
              dishImages: dishImages,
              optionDishes: optionDishes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'optionDishes';
        optionDishes.build();
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
