// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_dishes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OptionDishes> _$optionDishesSerializer =
    new _$OptionDishesSerializer();

class _$OptionDishesSerializer implements StructuredSerializer<OptionDishes> {
  @override
  final Iterable<Type> types = const [OptionDishes, _$OptionDishes];
  @override
  final String wireName = 'OptionDishes';

  @override
  Iterable<Object> serialize(Serializers serializers, OptionDishes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'option',
      serializers.serialize(object.option,
          specifiedType: const FullType(String)),
      'priceOption',
      serializers.serialize(object.priceOption,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  OptionDishes deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OptionDishesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'option':
          result.option = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'priceOption':
          result.priceOption = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$OptionDishes extends OptionDishes {
  @override
  final String option;
  @override
  final double priceOption;

  factory _$OptionDishes([void Function(OptionDishesBuilder) updates]) =>
      (new OptionDishesBuilder()..update(updates)).build();

  _$OptionDishes._({this.option, this.priceOption}) : super._() {
    if (option == null) {
      throw new BuiltValueNullFieldError('OptionDishes', 'option');
    }
    if (priceOption == null) {
      throw new BuiltValueNullFieldError('OptionDishes', 'priceOption');
    }
  }

  @override
  OptionDishes rebuild(void Function(OptionDishesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OptionDishesBuilder toBuilder() => new OptionDishesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OptionDishes &&
        option == other.option &&
        priceOption == other.priceOption;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, option.hashCode), priceOption.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OptionDishes')
          ..add('option', option)
          ..add('priceOption', priceOption))
        .toString();
  }
}

class OptionDishesBuilder
    implements Builder<OptionDishes, OptionDishesBuilder> {
  _$OptionDishes _$v;

  String _option;
  String get option => _$this._option;
  set option(String option) => _$this._option = option;

  double _priceOption;
  double get priceOption => _$this._priceOption;
  set priceOption(double priceOption) => _$this._priceOption = priceOption;

  OptionDishesBuilder();

  OptionDishesBuilder get _$this {
    if (_$v != null) {
      _option = _$v.option;
      _priceOption = _$v.priceOption;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OptionDishes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OptionDishes;
  }

  @override
  void update(void Function(OptionDishesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OptionDishes build() {
    final _$result =
        _$v ?? new _$OptionDishes._(option: option, priceOption: priceOption);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
