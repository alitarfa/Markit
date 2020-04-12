// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Register> _$registerSerializer = new _$RegisterSerializer();

class _$RegisterSerializer implements StructuredSerializer<Register> {
  @override
  final Iterable<Type> types = const [Register, _$Register];
  @override
  final String wireName = 'Register';

  @override
  Iterable<Object> serialize(Serializers serializers, Register object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Register deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Register extends Register {
  @override
  final String userName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String password;

  factory _$Register([void Function(RegisterBuilder) updates]) =>
      (new RegisterBuilder()..update(updates)).build();

  _$Register._({this.userName, this.email, this.phoneNumber, this.password})
      : super._() {
    if (userName == null) {
      throw new BuiltValueNullFieldError('Register', 'userName');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('Register', 'email');
    }
    if (phoneNumber == null) {
      throw new BuiltValueNullFieldError('Register', 'phoneNumber');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('Register', 'password');
    }
  }

  @override
  Register rebuild(void Function(RegisterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterBuilder toBuilder() => new RegisterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Register &&
        userName == other.userName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userName.hashCode), email.hashCode),
            phoneNumber.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Register')
          ..add('userName', userName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('password', password))
        .toString();
  }
}

class RegisterBuilder implements Builder<Register, RegisterBuilder> {
  _$Register _$v;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  RegisterBuilder();

  RegisterBuilder get _$this {
    if (_$v != null) {
      _userName = _$v.userName;
      _email = _$v.email;
      _phoneNumber = _$v.phoneNumber;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Register other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Register;
  }

  @override
  void update(void Function(RegisterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Register build() {
    final _$result = _$v ??
        new _$Register._(
            userName: userName,
            email: email,
            phoneNumber: phoneNumber,
            password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
