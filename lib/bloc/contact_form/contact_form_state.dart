part of 'contact_form_bloc.dart';

@freezed
class ContactFormState with _$ContactFormState {
  const factory ContactFormState({required List<FormItemData> formItems}) = _ContactFormState;

  factory ContactFormState.edited({required List<FormItemData> formItems}) => ContactFormState(formItems: formItems);
}
