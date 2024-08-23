import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/bloc/contact_form/keys.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/form_items_helper.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_contact_event.dart';

part 'edit_contact_state.dart';

part 'edit_contact_bloc.freezed.dart';

class EditContactBloc extends Bloc<EditContactEvent, EditContactState> {
  final Contact _initialContact;
  final ContactsRepository _contactsRepository;
  final FormItemsHelper _formItemsHelper;
  final LogService _logService;

  EditContactBloc(
      {required ContactsRepository contactsRepository,
      required FormItemsHelper formItemsHelper,
      required LogService logService,
      required Contact contact})
      : _contactsRepository = contactsRepository,
        _formItemsHelper = formItemsHelper,
        _logService = logService,
        _initialContact = contact,
        super(EditContactState(contact: contact)) {
    on<EditContactEvent>((event, emit) {
      event.maybeWhen(
        updateRequested: (contact) => _onContactUpdateRequested(emit, contact),
        orElse: () {},
      );
    });
  }

  void _onContactUpdateRequested(Emitter<EditContactState> emit, Contact contact) {
    _contactsRepository.updateContact(contact: contact);
    final localContact = _contactsRepository.getContact(id: contact.entityId);
    if (localContact == null) {
      emit(const EditContactState.failed());
    } else {
      emit(EditContactState(contact: localContact));
    }
  }

  void requestContactUpdate({required List<FormItemData> formItems}) {
    final isValid = _formItemsHelper.isValidForm(formItems);
    if (isValid) {
      final updatedContact = _initialContact.copyWith(
        firstName: _formItemsHelper.getFormItemValue(formItems, firstNameKey)!,
        lastName: _formItemsHelper.getFormItemValue(formItems, lastNameKey)!,
        phoneNumber: _formItemsHelper.getFormItemValue(formItems, phoneKey)!,
        zipCode: _formItemsHelper.getFormItemValue(formItems, zipCodeKey),
        streetAddress1: _formItemsHelper.getFormItemValue(formItems, streetAddress1Key),
        streetAddress2: _formItemsHelper.getFormItemValue(formItems, streetAddress2Key),
        state: _formItemsHelper.getFormItemValue(formItems, stateKey),
        city: _formItemsHelper.getFormItemValue(formItems, cityKey),
      );
      add(EditContactEvent.updateRequested(contact: updatedContact));
    } else {
      _logService.exception(error: Exception('Invalid form'), stackTrace: StackTrace.current);
    }
  }
}
