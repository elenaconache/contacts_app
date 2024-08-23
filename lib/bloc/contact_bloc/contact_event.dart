part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.deleteRequested() = _DeleteRequested;

  const factory ContactEvent.edited({required Contact contact}) = _Edited;
}
