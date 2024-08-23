import 'dart:math';

import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/bloc/contact_form/keys.dart';
import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/model/json_contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/service/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

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
    final firstName = _getFormItemValue(formItems, firstNameKey);
    final lastName = _getFormItemValue(formItems, lastNameKey);
    final phone = _getFormItemValue(formItems, phoneKey);
    if ([firstName, lastName, phone].any((element) => element == null)) {
      getIt<LogService>().exception(error: Exception('Missing required fields.'), stackTrace: StackTrace.current);
    } else {
      add(AddContactEvent.added(
        contact: JsonContact(
          contactId: Random().nextDouble().toString(),
          firstName: firstName!,
          lastName: lastName!,
          phoneNumber: phone!,
          zipCode: _getFormItemValue(formItems, zipCodeKey),
          streetAddress1: _getFormItemValue(formItems, streetAddress1Key),
          streetAddress2: _getFormItemValue(formItems, streetAddress2Key),
          state: _getFormItemValue(formItems, stateKey),
          city: _getFormItemValue(formItems, cityKey),
        ),
      ));
    }
  }

  String? _getFormItemValue(List<FormItemData> formItems, String key) =>
      formItems.singleWhereOrNull((item) => item.key == key)?.value;
}
