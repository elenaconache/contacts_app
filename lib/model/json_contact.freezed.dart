// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JsonContact _$JsonContactFromJson(Map<String, dynamic> json) {
  return _JsonContact.fromJson(json);
}

/// @nodoc
mixin _$JsonContact {
  @JsonKey(name: 'contactID')
  String get contactId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String? get streetAddress1 => throw _privateConstructorUsedError;
  String? get streetAddress2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;

  /// Serializes this JsonContact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JsonContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JsonContactCopyWith<JsonContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonContactCopyWith<$Res> {
  factory $JsonContactCopyWith(
          JsonContact value, $Res Function(JsonContact) then) =
      _$JsonContactCopyWithImpl<$Res, JsonContact>;
  @useResult
  $Res call(
      {@JsonKey(name: 'contactID') String contactId,
      String firstName,
      String lastName,
      String phoneNumber,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class _$JsonContactCopyWithImpl<$Res, $Val extends JsonContact>
    implements $JsonContactCopyWith<$Res> {
  _$JsonContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JsonContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_value.copyWith(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress2: freezed == streetAddress2
          ? _value.streetAddress2
          : streetAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsonContactImplCopyWith<$Res>
    implements $JsonContactCopyWith<$Res> {
  factory _$$JsonContactImplCopyWith(
          _$JsonContactImpl value, $Res Function(_$JsonContactImpl) then) =
      __$$JsonContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'contactID') String contactId,
      String firstName,
      String lastName,
      String phoneNumber,
      String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? state,
      String? zipCode});
}

/// @nodoc
class __$$JsonContactImplCopyWithImpl<$Res>
    extends _$JsonContactCopyWithImpl<$Res, _$JsonContactImpl>
    implements _$$JsonContactImplCopyWith<$Res> {
  __$$JsonContactImplCopyWithImpl(
      _$JsonContactImpl _value, $Res Function(_$JsonContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of JsonContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_$JsonContactImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress2: freezed == streetAddress2
          ? _value.streetAddress2
          : streetAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonContactImpl extends _JsonContact {
  const _$JsonContactImpl(
      {@JsonKey(name: 'contactID') required this.contactId,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      this.streetAddress1,
      this.streetAddress2,
      this.city,
      this.state,
      this.zipCode})
      : super._();

  factory _$JsonContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonContactImplFromJson(json);

  @override
  @JsonKey(name: 'contactID')
  final String contactId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String? streetAddress1;
  @override
  final String? streetAddress2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipCode;

  @override
  String toString() {
    return 'JsonContact(contactId: $contactId, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, city: $city, state: $state, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonContactImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.streetAddress1, streetAddress1) ||
                other.streetAddress1 == streetAddress1) &&
            (identical(other.streetAddress2, streetAddress2) ||
                other.streetAddress2 == streetAddress2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contactId, firstName, lastName,
      phoneNumber, streetAddress1, streetAddress2, city, state, zipCode);

  /// Create a copy of JsonContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonContactImplCopyWith<_$JsonContactImpl> get copyWith =>
      __$$JsonContactImplCopyWithImpl<_$JsonContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonContactImplToJson(
      this,
    );
  }
}

abstract class _JsonContact extends JsonContact {
  const factory _JsonContact(
      {@JsonKey(name: 'contactID') required final String contactId,
      required final String firstName,
      required final String lastName,
      required final String phoneNumber,
      final String? streetAddress1,
      final String? streetAddress2,
      final String? city,
      final String? state,
      final String? zipCode}) = _$JsonContactImpl;
  const _JsonContact._() : super._();

  factory _JsonContact.fromJson(Map<String, dynamic> json) =
      _$JsonContactImpl.fromJson;

  @override
  @JsonKey(name: 'contactID')
  String get contactId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  String? get streetAddress1;
  @override
  String? get streetAddress2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipCode;

  /// Create a copy of JsonContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonContactImplCopyWith<_$JsonContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
