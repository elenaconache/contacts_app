import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form_event.dart';

part 'contact_form_state.dart';

part 'contact_form_bloc.freezed.dart';

class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState> {
  ContactFormBloc({required List<FormItemData> formItems}) : super(ContactFormState.incomplete(formItems: formItems)) {
    on<ContactFormEvent>(
      (event, emit) {
        event.when(
          () {},
          fieldChanged: (key, value) => _onFieldChanged(event, emit, key, value),
        );
      },
    );
  }

  void _onFieldChanged(ContactFormEvent event, Emitter<ContactFormState> emit, String key, String value) {
    final updatedFormItems =
        state.formItems.map((formItem) => formItem.key == key ? formItem.copyWith(value: value) : formItem).toList();
    final isValid =
        updatedFormItems.where((item) => item.isMandatory).toList().every((item) => item.value?.isNotEmpty ?? false);
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
