// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddContactEvent {
  JsonContact get contact => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JsonContact contact) added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JsonContact contact)? added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JsonContact contact)? added,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddContactEventCopyWith<AddContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactEventCopyWith<$Res> {
  factory $AddContactEventCopyWith(
          AddContactEvent value, $Res Function(AddContactEvent) then) =
      _$AddContactEventCopyWithImpl<$Res, AddContactEvent>;
  @useResult
  $Res call({JsonContact contact});

  $JsonContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$AddContactEventCopyWithImpl<$Res, $Val extends AddContactEvent>
    implements $AddContactEventCopyWith<$Res> {
  _$AddContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddContactEvent
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
              as JsonContact,
    ) as $Val);
  }

  /// Create a copy of AddContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JsonContactCopyWith<$Res> get contact {
    return $JsonContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res>
    implements $AddContactEventCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JsonContact contact});

  @override
  $JsonContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$AddedImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as JsonContact,
    ));
  }
}

/// @nodoc

class _$AddedImpl implements _Added {
  const _$AddedImpl({required this.contact});

  @override
  final JsonContact contact;

  @override
  String toString() {
    return 'AddContactEvent.added(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of AddContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JsonContact contact) added,
  }) {
    return added(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JsonContact contact)? added,
  }) {
    return added?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JsonContact contact)? added,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements AddContactEvent {
  const factory _Added({required final JsonContact contact}) = _$AddedImpl;

  @override
  JsonContact get contact;

  /// Create a copy of AddContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddContactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(JsonContact contact) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(JsonContact contact)? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(JsonContact contact)? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Confirmed value) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Confirmed value)? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Confirmed value)? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactStateCopyWith<$Res> {
  factory $AddContactStateCopyWith(
          AddContactState value, $Res Function(AddContactState) then) =
      _$AddContactStateCopyWithImpl<$Res, AddContactState>;
}

/// @nodoc
class _$AddContactStateCopyWithImpl<$Res, $Val extends AddContactState>
    implements $AddContactStateCopyWith<$Res> {
  _$AddContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddContactState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PendingImplCopyWith<$Res> {
  factory _$$PendingImplCopyWith(
          _$PendingImpl value, $Res Function(_$PendingImpl) then) =
      __$$PendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingImplCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$PendingImpl>
    implements _$$PendingImplCopyWith<$Res> {
  __$$PendingImplCopyWithImpl(
      _$PendingImpl _value, $Res Function(_$PendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddContactState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PendingImpl implements _Pending {
  const _$PendingImpl();

  @override
  String toString() {
    return 'AddContactState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(JsonContact contact) confirmed,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(JsonContact contact)? confirmed,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(JsonContact contact)? confirmed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Confirmed value) confirmed,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Confirmed value)? confirmed,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Confirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements AddContactState {
  const factory _Pending() = _$PendingImpl;
}

/// @nodoc
abstract class _$$ConfirmedImplCopyWith<$Res> {
  factory _$$ConfirmedImplCopyWith(
          _$ConfirmedImpl value, $Res Function(_$ConfirmedImpl) then) =
      __$$ConfirmedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JsonContact contact});

  $JsonContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ConfirmedImplCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res, _$ConfirmedImpl>
    implements _$$ConfirmedImplCopyWith<$Res> {
  __$$ConfirmedImplCopyWithImpl(
      _$ConfirmedImpl _value, $Res Function(_$ConfirmedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$ConfirmedImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as JsonContact,
    ));
  }

  /// Create a copy of AddContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JsonContactCopyWith<$Res> get contact {
    return $JsonContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$ConfirmedImpl implements _Confirmed {
  const _$ConfirmedImpl({required this.contact});

  @override
  final JsonContact contact;

  @override
  String toString() {
    return 'AddContactState.confirmed(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of AddContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmedImplCopyWith<_$ConfirmedImpl> get copyWith =>
      __$$ConfirmedImplCopyWithImpl<_$ConfirmedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(JsonContact contact) confirmed,
  }) {
    return confirmed(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(JsonContact contact)? confirmed,
  }) {
    return confirmed?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(JsonContact contact)? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Confirmed value) confirmed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Confirmed value)? confirmed,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Confirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _Confirmed implements AddContactState {
  const factory _Confirmed({required final JsonContact contact}) =
      _$ConfirmedImpl;

  JsonContact get contact;

  /// Create a copy of AddContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmedImplCopyWith<_$ConfirmedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
