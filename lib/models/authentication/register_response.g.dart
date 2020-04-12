// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisterResponse> _$registerResponseSerializer =
    new _$RegisterResponseSerializer();

class _$RegisterResponseSerializer
    implements StructuredSerializer<RegisterResponse> {
  @override
  final Iterable<Type> types = const [RegisterResponse, _$RegisterResponse];
  @override
  final String wireName = 'RegisterResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, RegisterResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
    ];
    if (object.response != null) {
      result
        ..add('response')
        ..add(serializers.serialize(object.response,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  RegisterResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterResponseBuilder();

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
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterResponse extends RegisterResponse {
  @override
  final int status;
  @override
  final User response;

  factory _$RegisterResponse(
          [void Function(RegisterResponseBuilder) updates]) =>
      (new RegisterResponseBuilder()..update(updates)).build();

  _$RegisterResponse._({this.status, this.response}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('RegisterResponse', 'status');
    }
  }

  @override
  RegisterResponse rebuild(void Function(RegisterResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterResponseBuilder toBuilder() =>
      new RegisterResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterResponse &&
        status == other.status &&
        response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterResponse')
          ..add('status', status)
          ..add('response', response))
        .toString();
  }
}

class RegisterResponseBuilder
    implements Builder<RegisterResponse, RegisterResponseBuilder> {
  _$RegisterResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  UserBuilder _response;
  UserBuilder get response => _$this._response ??= new UserBuilder();
  set response(UserBuilder response) => _$this._response = response;

  RegisterResponseBuilder();

  RegisterResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _response = _$v.response?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegisterResponse;
  }

  @override
  void update(void Function(RegisterResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterResponse build() {
    _$RegisterResponse _$result;
    try {
      _$result = _$v ??
          new _$RegisterResponse._(
              status: status, response: _response?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RegisterResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
