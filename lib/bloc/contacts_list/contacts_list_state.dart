part of 'contacts_list_bloc.dart';

@freezed
class ContactsListState with _$ContactsListState {
  const factory ContactsListState({required List<Contact> contacts}) = _ContactsListState;

  factory ContactsListState.fetched({required List<Contact> contacts}) => ContactsListState(contacts: contacts);

  const factory ContactsListState.loading() = _Loading;

  const factory ContactsListState.fetchError() = _FetchError;
}
