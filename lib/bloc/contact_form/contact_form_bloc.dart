import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/shared/form_items_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form_event.dart';

part 'contact_form_state.dart';

part 'contact_form_bloc.freezed.dart';

class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState> {
  final FormItemsHelper _formHelper;

  ContactFormBloc({required FormItemsHelper formHelper, required List<FormItemData> formItems})
      : _formHelper = formHelper,
        super(ContactFormState.incomplete(formItems: formItems)) {
    on<ContactFormEvent>(
      (event, emit) {
        event.when(
          fieldChanged: (key, value) => _onFieldChanged(event, emit, key, value),
        );
      },
    );
  }

  void _onFieldChanged(ContactFormEvent event, Emitter<ContactFormState> emit, String key, String value) {
    final updatedFormItems =
        state.formItems.map((formItem) => formItem.key == key ? formItem.copyWith(value: value) : formItem).toList();
    final isValid = _formHelper.isValidForm(updatedFormItems);
    emit(
      isValid
          ? ContactFormState.valid(formItems: updatedFormItems)
          : ContactFormState.incomplete(formItems: updatedFormItems),
    );
  }

  void updateField({required String key, required String value}) {
    add(ContactFormEvent.fieldChanged(key: key, value: value));
  }
}
