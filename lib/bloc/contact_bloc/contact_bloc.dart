import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_event.dart';

part 'contact_state.dart';

part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactsRepository _contactsRepository;

  ContactBloc({required ContactsRepository contactsRepository, required Contact contact})
      : _contactsRepository = contactsRepository,
        super(ContactState.fetched(contact: contact)) {
    on<ContactEvent>((event, emit) {
      event.when(
        deleteRequested: () => _onContactDeleteRequested(emit, contact.entityId),
      );
    });
  }

  void _onContactDeleteRequested(Emitter<ContactState> emit, int id) {
    _contactsRepository.deleteContact(id: id);
    emit(const ContactState.deleted());
  }

  void requestDelete() => add(const ContactEvent.deleteRequested());
}
