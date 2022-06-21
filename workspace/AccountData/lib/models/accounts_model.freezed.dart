// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accounts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountsModel _$AccountsModelFromJson(Map<dynamic, dynamic> json) {
  return _AccountsModel.fromJson(json);
}

/// @nodoc
mixin _$AccountsModel {
  dynamic get odataContext => throw _privateConstructorUsedError;
  List<Value> get value => throw _privateConstructorUsedError;

  Map<dynamic, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsModelCopyWith<AccountsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsModelCopyWith<$Res> {
  factory $AccountsModelCopyWith(
          AccountsModel value, $Res Function(AccountsModel) then) =
      _$AccountsModelCopyWithImpl<$Res>;
  $Res call({dynamic odataContext, List<Value> value});
}

/// @nodoc
class _$AccountsModelCopyWithImpl<$Res>
    implements $AccountsModelCopyWith<$Res> {
  _$AccountsModelCopyWithImpl(this._value, this._then);

  final AccountsModel _value;
  // ignore: unused_field
  final $Res Function(AccountsModel) _then;

  @override
  $Res call({
    Object? odataContext = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      odataContext: odataContext == freezed
          ? _value.odataContext
          : odataContext // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Value>,
    ));
  }
}

/// @nodoc
abstract class _$$_AccountsModelCopyWith<$Res>
    implements $AccountsModelCopyWith<$Res> {
  factory _$$_AccountsModelCopyWith(
          _$_AccountsModel value, $Res Function(_$_AccountsModel) then) =
      __$$_AccountsModelCopyWithImpl<$Res>;
  @override
  $Res call({dynamic odataContext, List<Value> value});
}

/// @nodoc
class __$$_AccountsModelCopyWithImpl<$Res>
    extends _$AccountsModelCopyWithImpl<$Res>
    implements _$$_AccountsModelCopyWith<$Res> {
  __$$_AccountsModelCopyWithImpl(
      _$_AccountsModel _value, $Res Function(_$_AccountsModel) _then)
      : super(_value, (v) => _then(v as _$_AccountsModel));

  @override
  _$_AccountsModel get _value => super._value as _$_AccountsModel;

  @override
  $Res call({
    Object? odataContext = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_AccountsModel(
      odataContext: odataContext == freezed
          ? _value.odataContext
          : odataContext // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: value == freezed
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Value>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountsModel implements _AccountsModel {
  const _$_AccountsModel(
      {required this.odataContext, required final List<Value> value})
      : _value = value;

  factory _$_AccountsModel.fromJson(Map<dynamic, dynamic> json) =>
      _$$_AccountsModelFromJson(json);

  @override
  final dynamic odataContext;
  final List<Value> _value;
  @override
  List<Value> get value {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  dynamic todynamic() {
    return 'AccountsModel(odataContext: $odataContext, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountsModel &&
            const DeepCollectionEquality()
                .equals(other.odataContext, odataContext) &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(odataContext),
      const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  _$$_AccountsModelCopyWith<_$_AccountsModel> get copyWith =>
      __$$_AccountsModelCopyWithImpl<_$_AccountsModel>(this, _$identity);

  @override
  Map<dynamic, dynamic> toJson() {
    return _$$_AccountsModelToJson(this);
  }
}

abstract class _AccountsModel implements AccountsModel {
  const factory _AccountsModel(
      {required final dynamic odataContext,
      required final List<Value> value}) = _$_AccountsModel;

  factory _AccountsModel.fromJson(Map<dynamic, dynamic> json) =
      _$_AccountsModel.fromJson;

  @override
  dynamic get odataContext => throw _privateConstructorUsedError;
  @override
  List<Value> get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AccountsModelCopyWith<_$_AccountsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Value _$ValueFromJson(Map<dynamic, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
mixin _$Value {
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get address1_stateorprovince => throw _privateConstructorUsedError;
  dynamic get accountnumber => throw _privateConstructorUsedError;
  dynamic get statecode => throw _privateConstructorUsedError;
  dynamic get entityimage_url => throw _privateConstructorUsedError;

  Map<dynamic, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueCopyWith<$Res> {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) =
      _$ValueCopyWithImpl<$Res>;
  $Res call(
      {dynamic name,
      dynamic address1_stateorprovince,
      dynamic accountnumber,
      dynamic statecode,
      dynamic entityimage_url});
}

/// @nodoc
class _$ValueCopyWithImpl<$Res> implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  final Value _value;
  // ignore: unused_field
  final $Res Function(Value) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address1_stateorprovince = freezed,
    Object? accountnumber = freezed,
    Object? statecode = freezed,
    Object? entityimage_url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address1_stateorprovince: address1_stateorprovince == freezed
          ? _value.address1_stateorprovince
          : address1_stateorprovince // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accountnumber: accountnumber == freezed
          ? _value.accountnumber
          : accountnumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statecode: statecode == freezed
          ? _value.statecode
          : statecode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      entityimage_url: entityimage_url == freezed
          ? _value.entityimage_url
          : entityimage_url // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_ValueCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$_ValueCopyWith(_$_Value value, $Res Function(_$_Value) then) =
      __$$_ValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic name,
      dynamic address1_stateorprovince,
      dynamic accountnumber,
      dynamic statecode,
      dynamic entityimage_url});
}

/// @nodoc
class __$$_ValueCopyWithImpl<$Res> extends _$ValueCopyWithImpl<$Res>
    implements _$$_ValueCopyWith<$Res> {
  __$$_ValueCopyWithImpl(_$_Value _value, $Res Function(_$_Value) _then)
      : super(_value, (v) => _then(v as _$_Value));

  @override
  _$_Value get _value => super._value as _$_Value;

  @override
  $Res call({
    Object? name = freezed,
    Object? address1_stateorprovince = freezed,
    Object? accountnumber = freezed,
    Object? statecode = freezed,
    Object? entityimage_url = freezed,
  }) {
    return _then(_$_Value(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address1_stateorprovince: address1_stateorprovince == freezed
          ? _value.address1_stateorprovince
          : address1_stateorprovince // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accountnumber: accountnumber == freezed
          ? _value.accountnumber
          : accountnumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statecode: statecode == freezed
          ? _value.statecode
          : statecode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      entityimage_url: entityimage_url == freezed
          ? _value.entityimage_url
          : entityimage_url // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Value implements _Value {
  const _$_Value(
      {required this.name,
      required this.address1_stateorprovince,
      required this.accountnumber,
      required this.statecode,
      required this.entityimage_url});

  factory _$_Value.fromJson(Map<dynamic, dynamic> json) =>
      _$$_ValueFromJson(json);

  @override
  final dynamic name;
  @override
  final dynamic address1_stateorprovince;
  @override
  final dynamic accountnumber;
  @override
  final dynamic statecode;
  @override
  final dynamic entityimage_url;

  @override
  dynamic todynamic() {
    return 'Value(name: $name, address1_stateorprovince: $address1_stateorprovince, accountnumber: $accountnumber, statecode: $statecode, entityimage_url: $entityimage_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Value &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(
                other.address1_stateorprovince, address1_stateorprovince) &&
            const DeepCollectionEquality()
                .equals(other.accountnumber, accountnumber) &&
            const DeepCollectionEquality().equals(other.statecode, statecode) &&
            const DeepCollectionEquality()
                .equals(other.entityimage_url, entityimage_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address1_stateorprovince),
      const DeepCollectionEquality().hash(accountnumber),
      const DeepCollectionEquality().hash(statecode),
      const DeepCollectionEquality().hash(entityimage_url));

  @JsonKey(ignore: true)
  @override
  _$$_ValueCopyWith<_$_Value> get copyWith =>
      __$$_ValueCopyWithImpl<_$_Value>(this, _$identity);

  @override
  Map<dynamic, dynamic> toJson() {
    return _$$_ValueToJson(this);
  }
}

abstract class _Value implements Value {
  const factory _Value(
      {required final dynamic name,
      required final dynamic address1_stateorprovince,
      required final dynamic accountnumber,
      required final dynamic statecode,
      required final dynamic entityimage_url}) = _$_Value;

  factory _Value.fromJson(Map<dynamic, dynamic> json) = _$_Value.fromJson;

  @override
  dynamic get name => throw _privateConstructorUsedError;
  @override
  dynamic get address1_stateorprovince => throw _privateConstructorUsedError;
  @override
  dynamic get accountnumber => throw _privateConstructorUsedError;
  @override
  dynamic get statecode => throw _privateConstructorUsedError;
  @override
  dynamic get entityimage_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ValueCopyWith<_$_Value> get copyWith =>
      throw _privateConstructorUsedError;
}
