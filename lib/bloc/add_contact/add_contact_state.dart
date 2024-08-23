part of 'add_contact_bloc.dart';

@freezed
class AddContactState with _$AddContactState {
  const factory AddContactState.pending() = _Pending;

  const factory AddContactState.confirmed({required JsonContact contact}) = _Confirmed;
}
