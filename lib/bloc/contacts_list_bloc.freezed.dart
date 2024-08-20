// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contactsListRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contactsListRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contactsListRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsListRequested value)
        contactsListRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsListRequested value)? contactsListRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsListRequested value)? contactsListRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsListEventCopyWith<$Res> {
  factory $ContactsListEventCopyWith(
          ContactsListEvent value, $Res Function(ContactsListEvent) then) =
      _$ContactsListEventCopyWithImpl<$Res, ContactsListEvent>;
}

/// @nodoc
class _$ContactsListEventCopyWithImpl<$Res, $Val extends ContactsListEvent>
    implements $ContactsListEventCopyWith<$Res> {
  _$ContactsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactsListRequestedImplCopyWith<$Res> {
  factory _$$ContactsListRequestedImplCopyWith(
          _$ContactsListRequestedImpl value,
          $Res Function(_$ContactsListRequestedImpl) then) =
      __$$ContactsListRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsListRequestedImplCopyWithImpl<$Res>
    extends _$ContactsListEventCopyWithImpl<$Res, _$ContactsListRequestedImpl>
    implements _$$ContactsListRequestedImplCopyWith<$Res> {
  __$$ContactsListRequestedImplCopyWithImpl(_$ContactsListRequestedImpl _value,
      $Res Function(_$ContactsListRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactsListRequestedImpl implements _ContactsListRequested {
  const _$ContactsListRequestedImpl();

  @override
  String toString() {
    return 'ContactsListEvent.contactsListRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsListRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contactsListRequested,
  }) {
    return contactsListRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contactsListRequested,
  }) {
    return contactsListRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contactsListRequested,
    required TResult orElse(),
  }) {
    if (contactsListRequested != null) {
      return contactsListRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsListRequested value)
        contactsListRequested,
  }) {
    return contactsListRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactsListRequested value)? contactsListRequested,
  }) {
    return contactsListRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsListRequested value)? contactsListRequested,
    required TResult orElse(),
  }) {
    if (contactsListRequested != null) {
      return contactsListRequested(this);
    }
    return orElse();
  }
}

abstract class _ContactsListRequested implements ContactsListEvent {
  const factory _ContactsListRequested() = _$ContactsListRequestedImpl;
}

/// @nodoc
mixin _$ContactsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Contact> contacts) $default, {
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Contact> contacts)? $default, {
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Contact> contacts)? $default, {
    TResult Function()? loading,
    TResult Function()? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ContactsListState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ContactsListState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ContactsListState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsListStateCopyWith<$Res> {
  factory $ContactsListStateCopyWith(
          ContactsListState value, $Res Function(ContactsListState) then) =
      _$ContactsListStateCopyWithImpl<$Res, ContactsListState>;
}

/// @nodoc
class _$ContactsListStateCopyWithImpl<$Res, $Val extends ContactsListState>
    implements $ContactsListStateCopyWith<$Res> {
  _$ContactsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactsListStateImplCopyWith<$Res> {
  factory _$$ContactsListStateImplCopyWith(_$ContactsListStateImpl value,
          $Res Function(_$ContactsListStateImpl) then) =
      __$$ContactsListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$ContactsListStateImplCopyWithImpl<$Res>
    extends _$ContactsListStateCopyWithImpl<$Res, _$ContactsListStateImpl>
    implements _$$ContactsListStateImplCopyWith<$Res> {
  __$$ContactsListStateImplCopyWithImpl(_$ContactsListStateImpl _value,
      $Res Function(_$ContactsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$ContactsListStateImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$ContactsListStateImpl implements _ContactsListState {
  const _$ContactsListStateImpl({required final List<Contact> contacts})
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactsListState(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsListStateImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactsListStateImplCopyWith<_$ContactsListStateImpl> get copyWith =>
      __$$ContactsListStateImplCopyWithImpl<_$ContactsListStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Contact> contacts) $default, {
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) {
    return $default(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Contact> contacts)? $default, {
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) {
    return $default?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Contact> contacts)? $default, {
    TResult Function()? loading,
    TResult Function()? fetchError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ContactsListState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ContactsListState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ContactsListState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ContactsListState implements ContactsListState {
  const factory _ContactsListState({required final List<Contact> contacts}) =
      _$ContactsListStateImpl;

  List<Contact> get contacts;

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactsListStateImplCopyWith<_$ContactsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ContactsListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ContactsListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Contact> contacts) $default, {
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Contact> contacts)? $default, {
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Contact> contacts)? $default, {
    TResult Function()? loading,
    TResult Function()? fetchError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ContactsListState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ContactsListState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ContactsListState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ContactsListState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FetchErrorImplCopyWith<$Res> {
  factory _$$FetchErrorImplCopyWith(
          _$FetchErrorImpl value, $Res Function(_$FetchErrorImpl) then) =
      __$$FetchErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchErrorImplCopyWithImpl<$Res>
    extends _$ContactsListStateCopyWithImpl<$Res, _$FetchErrorImpl>
    implements _$$FetchErrorImplCopyWith<$Res> {
  __$$FetchErrorImplCopyWithImpl(
      _$FetchErrorImpl _value, $Res Function(_$FetchErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchErrorImpl implements _FetchError {
  const _$FetchErrorImpl();

  @override
  String toString() {
    return 'ContactsListState.fetchError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Contact> contacts) $default, {
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) {
    return fetchError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<Contact> contacts)? $default, {
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) {
    return fetchError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Contact> contacts)? $default, {
    TResult Function()? loading,
    TResult Function()? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ContactsListState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ContactsListState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ContactsListState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class _FetchError implements ContactsListState {
  const factory _FetchError() = _$FetchErrorImpl;
}
