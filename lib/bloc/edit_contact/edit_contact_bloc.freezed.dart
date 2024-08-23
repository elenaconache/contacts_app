// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditContactEvent {
  Contact get contact => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) started,
    required TResult Function(Contact contact) updateRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? started,
    TResult? Function(Contact contact)? updateRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? started,
    TResult Function(Contact contact)? updateRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateRequested value) updateRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateRequested value)? updateRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditContactEventCopyWith<EditContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditContactEventCopyWith<$Res> {
  factory $EditContactEventCopyWith(
          EditContactEvent value, $Res Function(EditContactEvent) then) =
      _$EditContactEventCopyWithImpl<$Res, EditContactEvent>;
  @useResult
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$EditContactEventCopyWithImpl<$Res, $Val extends EditContactEvent>
    implements $EditContactEventCopyWith<$Res> {
  _$EditContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ) as $Val);
  }

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $EditContactEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$EditContactEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$StartedImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.contact});

  @override
  final Contact contact;

  @override
  String toString() {
    return 'EditContactEvent.started(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) started,
    required TResult Function(Contact contact) updateRequested,
  }) {
    return started(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? started,
    TResult? Function(Contact contact)? updateRequested,
  }) {
    return started?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? started,
    TResult Function(Contact contact)? updateRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateRequested value) updateRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateRequested value)? updateRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EditContactEvent {
  const factory _Started({required final Contact contact}) = _$StartedImpl;

  @override
  Contact get contact;

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRequestedImplCopyWith<$Res>
    implements $EditContactEventCopyWith<$Res> {
  factory _$$UpdateRequestedImplCopyWith(_$UpdateRequestedImpl value,
          $Res Function(_$UpdateRequestedImpl) then) =
      __$$UpdateRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$UpdateRequestedImplCopyWithImpl<$Res>
    extends _$EditContactEventCopyWithImpl<$Res, _$UpdateRequestedImpl>
    implements _$$UpdateRequestedImplCopyWith<$Res> {
  __$$UpdateRequestedImplCopyWithImpl(
      _$UpdateRequestedImpl _value, $Res Function(_$UpdateRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$UpdateRequestedImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$UpdateRequestedImpl implements _UpdateRequested {
  const _$UpdateRequestedImpl({required this.contact});

  @override
  final Contact contact;

  @override
  String toString() {
    return 'EditContactEvent.updateRequested(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRequestedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRequestedImplCopyWith<_$UpdateRequestedImpl> get copyWith =>
      __$$UpdateRequestedImplCopyWithImpl<_$UpdateRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact) started,
    required TResult Function(Contact contact) updateRequested,
  }) {
    return updateRequested(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact)? started,
    TResult? Function(Contact contact)? updateRequested,
  }) {
    return updateRequested?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact)? started,
    TResult Function(Contact contact)? updateRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateRequested value) updateRequested,
  }) {
    return updateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateRequested value)? updateRequested,
  }) {
    return updateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(this);
    }
    return orElse();
  }
}

abstract class _UpdateRequested implements EditContactEvent {
  const factory _UpdateRequested({required final Contact contact}) =
      _$UpdateRequestedImpl;

  @override
  Contact get contact;

  /// Create a copy of EditContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRequestedImplCopyWith<_$UpdateRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditContactState {
  Contact get contact => throw _privateConstructorUsedError;

  /// Create a copy of EditContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditContactStateCopyWith<EditContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditContactStateCopyWith<$Res> {
  factory $EditContactStateCopyWith(
          EditContactState value, $Res Function(EditContactState) then) =
      _$EditContactStateCopyWithImpl<$Res, EditContactState>;
  @useResult
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$EditContactStateCopyWithImpl<$Res, $Val extends EditContactState>
    implements $EditContactStateCopyWith<$Res> {
  _$EditContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ) as $Val);
  }

  /// Create a copy of EditContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditContactStateImplCopyWith<$Res>
    implements $EditContactStateCopyWith<$Res> {
  factory _$$EditContactStateImplCopyWith(_$EditContactStateImpl value,
          $Res Function(_$EditContactStateImpl) then) =
      __$$EditContactStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$EditContactStateImplCopyWithImpl<$Res>
    extends _$EditContactStateCopyWithImpl<$Res, _$EditContactStateImpl>
    implements _$$EditContactStateImplCopyWith<$Res> {
  __$$EditContactStateImplCopyWithImpl(_$EditContactStateImpl _value,
      $Res Function(_$EditContactStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$EditContactStateImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$EditContactStateImpl implements _EditContactState {
  const _$EditContactStateImpl({required this.contact});

  @override
  final Contact contact;

  @override
  String toString() {
    return 'EditContactState(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditContactStateImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of EditContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditContactStateImplCopyWith<_$EditContactStateImpl> get copyWith =>
      __$$EditContactStateImplCopyWithImpl<_$EditContactStateImpl>(
          this, _$identity);
}

abstract class _EditContactState implements EditContactState {
  const factory _EditContactState({required final Contact contact}) =
      _$EditContactStateImpl;

  @override
  Contact get contact;

  /// Create a copy of EditContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditContactStateImplCopyWith<_$EditContactStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
