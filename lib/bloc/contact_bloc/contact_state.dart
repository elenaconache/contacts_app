part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.fetched({required Contact contact}) = _Fetched;

  const factory ContactState.deleted() = _Deleted;
}
