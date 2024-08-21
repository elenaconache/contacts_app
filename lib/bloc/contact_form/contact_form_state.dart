part of 'contact_form_bloc.dart';

@freezed
class ContactFormState with _$ContactFormState {
  const factory ContactFormState({required List<FormItemData> formItems, required bool isValid}) = _ContactFormState;

  factory ContactFormState.valid({required List<FormItemData> formItems}) =>
      ContactFormState(formItems: formItems, isValid: true);

  factory ContactFormState.incomplete({required List<FormItemData> formItems}) =>
      ContactFormState(formItems: formItems, isValid: false);
}
