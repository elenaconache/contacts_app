part of 'contacts_list_bloc.dart';

@freezed
class ContactsListEvent with _$ContactsListEvent {
  const factory ContactsListEvent.subscriptionRequested() = _SubscriptionRequested;
}
