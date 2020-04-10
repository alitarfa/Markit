// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Coordinate> _$coordinateSerializer = new _$CoordinateSerializer();

class _$CoordinateSerializer implements StructuredSerializer<Coordinate> {
  @override
  final Iterable<Type> types = const [Coordinate, _$Coordinate];
  @override
  final String wireName = 'Coordinate';

  @override
  Iterable<Object> serialize(Serializers serializers, Coordinate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Coordinate deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordinateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Coordinate extends Coordinate {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$Coordinate([void Function(CoordinateBuilder) updates]) =>
      (new CoordinateBuilder()..update(updates)).build();

  _$Coordinate._({this.latitude, this.longitude}) : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('Coordinate', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('Coordinate', 'longitude');
    }
  }

  @override
  Coordinate rebuild(void Function(CoordinateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordinateBuilder toBuilder() => new CoordinateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coordinate &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Coordinate')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class CoordinateBuilder implements Builder<Coordinate, CoordinateBuilder> {
  _$Coordinate _$v;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  CoordinateBuilder();

  CoordinateBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coordinate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Coordinate;
  }

  @override
  void update(void Function(CoordinateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Coordinate build() {
    final _$result =
        _$v ?? new _$Coordinate._(latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
