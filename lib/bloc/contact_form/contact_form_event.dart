part of 'contact_form_bloc.dart';

@freezed
class ContactFormEvent with _$ContactFormEvent {
  const factory ContactFormEvent.fieldChanged({required String key, required String value}) = _FieldChanged;
}
