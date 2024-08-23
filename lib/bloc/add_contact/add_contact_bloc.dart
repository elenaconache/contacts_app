import 'dart:math';

import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/bloc/contact_form/keys.dart';
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
  final FormItemsHelper _formHelper;
  final LogService _logService;

  AddContactBloc({
    required ContactsRepository contactsRepository,
    required FormItemsHelper formHelper,
    required LogService logService,
  })  : _contactsRepository = contactsRepository,
        _formHelper = formHelper,
        _logService = logService,
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
    if (!_formHelper.isValidForm(formItems)) {
      _logService.w('Invalid form');
    } else {
      add(AddContactEvent.added(
        contact: JsonContact(
          contactId: Random().nextDouble().toString(),
          firstName: _formHelper.getFormItemValue(formItems, firstNameKey)!,
          lastName: _formHelper.getFormItemValue(formItems, lastNameKey)!,
          phoneNumber: _formHelper.getFormItemValue(formItems, phoneKey)!,
          zipCode: _formHelper.getFormItemValue(formItems, zipCodeKey),
          streetAddress1: _formHelper.getFormItemValue(formItems, streetAddress1Key),
          streetAddress2: _formHelper.getFormItemValue(formItems, streetAddress2Key),
          state: _formHelper.getFormItemValue(formItems, stateKey),
          city: _formHelper.getFormItemValue(formItems, cityKey),
        ),
      ));
    }
  }
}
