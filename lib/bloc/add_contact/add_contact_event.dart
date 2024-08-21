part of 'add_contact_bloc.dart';

@freezed
class AddContactEvent with _$AddContactEvent {
  const factory AddContactEvent.added({required Contact contact}) = _Added;
}
