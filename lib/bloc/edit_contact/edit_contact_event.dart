part of 'edit_contact_bloc.dart';

@freezed
class EditContactEvent with _$EditContactEvent {
  const factory EditContactEvent.started({required Contact contact}) = _Started;

  const factory EditContactEvent.updateRequested({required Contact contact}) = _UpdateRequested;
}
