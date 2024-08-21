import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/service/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_list_event.dart';

part 'contacts_list_state.dart';

part 'contacts_list_bloc.freezed.dart';

class ContactsListBloc extends Bloc<ContactsListEvent, ContactsListState> {
  final ContactsRepository _contactsRepository;

  ContactsListBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const ContactsListState.loading()) {
    on<ContactsListEvent>((event, emit) async {
      await event.when(
        contactsListRequested: () => _onContactsListRequested(event, emit),
      );
    });
  }

  Future<void> _onContactsListRequested(ContactsListEvent event, Emitter<ContactsListState> emit) async {
    await Future.delayed(const Duration(milliseconds: 600));
    await _contactsRepository.getInitialContacts(path: 'assets/contacts.json').then((contacts) {
      _contactsRepository.saveContacts(contacts: contacts);
      emit(ContactsListState.fetched(contacts: contacts));
    }).catchError((error, stackTrace) {
      getIt<LogService>().exception(error: error, stackTrace: stackTrace);
      emit(const ContactsListState.fetchError());
    });
  }
}
