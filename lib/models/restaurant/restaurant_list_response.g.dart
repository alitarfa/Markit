// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantListResponse> _$restaurantListResponseSerializer =
    new _$RestaurantListResponseSerializer();

class _$RestaurantListResponseSerializer
    implements StructuredSerializer<RestaurantListResponse> {
  @override
  final Iterable<Type> types = const [
    RestaurantListResponse,
    _$RestaurantListResponse
  ];
  @override
  final String wireName = 'RestaurantListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RestaurantListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'response',
      serializers.serialize(object.response,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurant)])),
    ];

    return result;
  }

  @override
  RestaurantListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurant)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantListResponse extends RestaurantListResponse {
  @override
  final int status;
  @override
  final BuiltList<Restaurant> response;

  factory _$RestaurantListResponse(
          [void Function(RestaurantListResponseBuilder) updates]) =>
      (new RestaurantListResponseBuilder()..update(updates)).build();

  _$RestaurantListResponse._({this.status, this.response}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('RestaurantListResponse', 'status');
    }
    if (response == null) {
      throw new BuiltValueNullFieldError('RestaurantListResponse', 'response');
    }
  }

  @override
  RestaurantListResponse rebuild(
          void Function(RestaurantListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantListResponseBuilder toBuilder() =>
      new RestaurantListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantListResponse &&
        status == other.status &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantListResponse')
          ..add('status', status)
          ..add('response', response))
        .toString();
  }
}

class RestaurantListResponseBuilder
    implements Builder<RestaurantListResponse, RestaurantListResponseBuilder> {
  _$RestaurantListResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<Restaurant> _response;
  ListBuilder<Restaurant> get response =>
      _$this._response ??= new ListBuilder<Restaurant>();
  set response(ListBuilder<Restaurant> response) => _$this._response = response;

  RestaurantListResponseBuilder();

  RestaurantListResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _response = _$v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestaurantListResponse;
  }

  @override
  void update(void Function(RestaurantListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantListResponse build() {
    _$RestaurantListResponse _$result;
    try {
      _$result = _$v ??
          new _$RestaurantListResponse._(
              status: status, response: response.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RestaurantListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
