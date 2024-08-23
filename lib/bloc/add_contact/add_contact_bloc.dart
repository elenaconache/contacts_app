import 'dart:math';

import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/bloc/contact_form/keys.dart';
import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/model/json_contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/form_items_helper.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_contact_event.dart';

part 'add_contact_state.dart';

part 'add_contact_bloc.freezed.dart';

class AddContactBloc extends Bloc<AddContactEvent, AddContactState> {
  final ContactsRepository _contactsRepository;

  AddContactBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const AddContactState.pending()) {
    on<AddContactEvent>((event, emit) {
      event.when(
        added: (contact) => _onContactAdded(emit, contact),
      );
    });
  }

  void _onContactAdded(Emitter<AddContactState> emit, JsonContact contact) {
    _contactsRepository.saveContact(contact: contact);
    emit(AddContactState.confirmed(contact: contact));
  }

  void addContact({required List<FormItemData> formItems}) {
    final formItemsHelper = getIt<FormItemsHelper>();
    if (!formItemsHelper.isValidForm(formItems)) {
      getIt<LogService>().exception(error: Exception('Invalid form'), stackTrace: StackTrace.current);
    } else {
      add(AddContactEvent.added(
        contact: JsonContact(
          contactId: Random().nextDouble().toString(),
          firstName: formItemsHelper.getFormItemValue(formItems, firstNameKey)!,
          lastName: formItemsHelper.getFormItemValue(formItems, lastNameKey)!,
          phoneNumber: formItemsHelper.getFormItemValue(formItems, phoneKey)!,
          zipCode: formItemsHelper.getFormItemValue(formItems, zipCodeKey),
          streetAddress1: formItemsHelper.getFormItemValue(formItems, streetAddress1Key),
          streetAddress2: formItemsHelper.getFormItemValue(formItems, streetAddress2Key),
          state: formItemsHelper.getFormItemValue(formItems, stateKey),
          city: formItemsHelper.getFormItemValue(formItems, cityKey),
        ),
      ));
    }
  }
}
