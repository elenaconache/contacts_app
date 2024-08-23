part of 'contacts_list_bloc.dart';

@freezed
class ContactsListState with _$ContactsListState {
  factory ContactsListState.fetched({required List<Contact> contacts}) = _Fetched;

  const factory ContactsListState.loading() = _Loading;

  const factory ContactsListState.fetchError() = _FetchError;
}
