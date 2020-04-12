// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'numberPhone',
      serializers.serialize(object.numberPhone,
          specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];
    if (object.profilePicture != null) {
      result
        ..add('profilePicture')
        ..add(serializers.serialize(object.profilePicture,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(Address)));
    }
    if (object.roles != null) {
      result
        ..add('roles')
        ..add(serializers.serialize(object.roles,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

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
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberPhone':
          result.numberPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profilePicture':
          result.profilePicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'roles':
          result.roles = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String id;
  @override
  final String userName;
  @override
  final String numberPhone;
  @override
  final int age;
  @override
  final String email;
  @override
  final String password;
  @override
  final String profilePicture;
  @override
  final Address address;
  @override
  final List<String> roles;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.userName,
      this.numberPhone,
      this.age,
      this.email,
      this.password,
      this.profilePicture,
      this.address,
      this.roles})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
    if (userName == null) {
      throw new BuiltValueNullFieldError('User', 'userName');
    }
    if (numberPhone == null) {
      throw new BuiltValueNullFieldError('User', 'numberPhone');
    }
    if (age == null) {
      throw new BuiltValueNullFieldError('User', 'age');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('User', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('User', 'password');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        userName == other.userName &&
        numberPhone == other.numberPhone &&
        age == other.age &&
        email == other.email &&
        password == other.password &&
        profilePicture == other.profilePicture &&
        address == other.address &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), userName.hashCode),
                                numberPhone.hashCode),
                            age.hashCode),
                        email.hashCode),
                    password.hashCode),
                profilePicture.hashCode),
            address.hashCode),
        roles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('userName', userName)
          ..add('numberPhone', numberPhone)
          ..add('age', age)
          ..add('email', email)
          ..add('password', password)
          ..add('profilePicture', profilePicture)
          ..add('address', address)
          ..add('roles', roles))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _numberPhone;
  String get numberPhone => _$this._numberPhone;
  set numberPhone(String numberPhone) => _$this._numberPhone = numberPhone;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _profilePicture;
  String get profilePicture => _$this._profilePicture;
  set profilePicture(String profilePicture) =>
      _$this._profilePicture = profilePicture;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  List<String> _roles;
  List<String> get roles => _$this._roles;
  set roles(List<String> roles) => _$this._roles = roles;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userName = _$v.userName;
      _numberPhone = _$v.numberPhone;
      _age = _$v.age;
      _email = _$v.email;
      _password = _$v.password;
      _profilePicture = _$v.profilePicture;
      _address = _$v.address?.toBuilder();
      _roles = _$v.roles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              userName: userName,
              numberPhone: numberPhone,
              age: age,
              email: email,
              password: password,
              profilePicture: profilePicture,
              address: _address?.build(),
              roles: roles);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
