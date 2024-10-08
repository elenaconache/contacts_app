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
    required TResult Function() subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionRequested value)
        subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionRequested value)? subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
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
abstract class _$$SubscriptionRequestedImplCopyWith<$Res> {
  factory _$$SubscriptionRequestedImplCopyWith(
          _$SubscriptionRequestedImpl value,
          $Res Function(_$SubscriptionRequestedImpl) then) =
      __$$SubscriptionRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscriptionRequestedImplCopyWithImpl<$Res>
    extends _$ContactsListEventCopyWithImpl<$Res, _$SubscriptionRequestedImpl>
    implements _$$SubscriptionRequestedImplCopyWith<$Res> {
  __$$SubscriptionRequestedImplCopyWithImpl(_$SubscriptionRequestedImpl _value,
      $Res Function(_$SubscriptionRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubscriptionRequestedImpl implements _SubscriptionRequested {
  const _$SubscriptionRequestedImpl();

  @override
  String toString() {
    return 'ContactsListEvent.subscriptionRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
  }) {
    return subscriptionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptionRequested,
  }) {
    return subscriptionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionRequested value)
        subscriptionRequested,
  }) {
    return subscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionRequested value)? subscriptionRequested,
  }) {
    return subscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionRequested implements ContactsListEvent {
  const factory _SubscriptionRequested() = _$SubscriptionRequestedImpl;
}

/// @nodoc
mixin _$ContactsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) fetched,
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? fetched,
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? fetched,
    TResult Function()? loading,
    TResult Function()? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
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
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$ContactsListStateCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$FetchedImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  _$FetchedImpl({required final List<Contact> contacts}) : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactsListState.fetched(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
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
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) fetched,
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) {
    return fetched(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? fetched,
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) {
    return fetched?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? fetched,
    TResult Function()? loading,
    TResult Function()? fetchError,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements ContactsListState {
  factory _Fetched({required final List<Contact> contacts}) = _$FetchedImpl;

  List<Contact> get contacts;

  /// Create a copy of ContactsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
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
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) fetched,
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? fetched,
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? fetched,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
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
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contacts) fetched,
    required TResult Function() loading,
    required TResult Function() fetchError,
  }) {
    return fetchError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Contact> contacts)? fetched,
    TResult? Function()? loading,
    TResult? Function()? fetchError,
  }) {
    return fetchError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contacts)? fetched,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
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
