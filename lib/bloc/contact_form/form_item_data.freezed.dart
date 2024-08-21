// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_item_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormItemData {
  String get key => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  bool get isMandatory => throw _privateConstructorUsedError;

  /// Create a copy of FormItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormItemDataCopyWith<FormItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormItemDataCopyWith<$Res> {
  factory $FormItemDataCopyWith(
          FormItemData value, $Res Function(FormItemData) then) =
      _$FormItemDataCopyWithImpl<$Res, FormItemData>;
  @useResult
  $Res call({String key, String hint, String? value, bool isMandatory});
}

/// @nodoc
class _$FormItemDataCopyWithImpl<$Res, $Val extends FormItemData>
    implements $FormItemDataCopyWith<$Res> {
  _$FormItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? hint = null,
    Object? value = freezed,
    Object? isMandatory = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isMandatory: null == isMandatory
          ? _value.isMandatory
          : isMandatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormItemDataImplCopyWith<$Res>
    implements $FormItemDataCopyWith<$Res> {
  factory _$$FormItemDataImplCopyWith(
          _$FormItemDataImpl value, $Res Function(_$FormItemDataImpl) then) =
      __$$FormItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String hint, String? value, bool isMandatory});
}

/// @nodoc
class __$$FormItemDataImplCopyWithImpl<$Res>
    extends _$FormItemDataCopyWithImpl<$Res, _$FormItemDataImpl>
    implements _$$FormItemDataImplCopyWith<$Res> {
  __$$FormItemDataImplCopyWithImpl(
      _$FormItemDataImpl _value, $Res Function(_$FormItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? hint = null,
    Object? value = freezed,
    Object? isMandatory = null,
  }) {
    return _then(_$FormItemDataImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isMandatory: null == isMandatory
          ? _value.isMandatory
          : isMandatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FormItemDataImpl extends _FormItemData {
  _$FormItemDataImpl(
      {required this.key,
      required this.hint,
      this.value,
      this.isMandatory = false})
      : super._();

  @override
  final String key;
  @override
  final String hint;
  @override
  final String? value;
  @override
  @JsonKey()
  final bool isMandatory;

  @override
  String toString() {
    return 'FormItemData(key: $key, hint: $hint, value: $value, isMandatory: $isMandatory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormItemDataImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isMandatory, isMandatory) ||
                other.isMandatory == isMandatory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, hint, value, isMandatory);

  /// Create a copy of FormItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormItemDataImplCopyWith<_$FormItemDataImpl> get copyWith =>
      __$$FormItemDataImplCopyWithImpl<_$FormItemDataImpl>(this, _$identity);
}

abstract class _FormItemData extends FormItemData {
  factory _FormItemData(
      {required final String key,
      required final String hint,
      final String? value,
      final bool isMandatory}) = _$FormItemDataImpl;
  _FormItemData._() : super._();

  @override
  String get key;
  @override
  String get hint;
  @override
  String? get value;
  @override
  bool get isMandatory;

  /// Create a copy of FormItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormItemDataImplCopyWith<_$FormItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
