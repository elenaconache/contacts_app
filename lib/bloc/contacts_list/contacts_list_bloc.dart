import 'package:contacts_app/entity/contact_entity.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_list_event.dart';

part 'contacts_list_state.dart';

part 'contacts_list_bloc.freezed.dart';

class ContactsListBloc extends Bloc<ContactsListEvent, ContactsListState> {
  final ContactsRepository _contactsRepository;
  final LogService _logService;

  ContactsListBloc({required ContactsRepository contactsRepository, required LogService logService})
      : _contactsRepository = contactsRepository,
        _logService = logService,
        super(const ContactsListState.loading()) {
    on<ContactsListEvent>((event, emit) async {
      await event.when(
        subscriptionRequested: () => _onSubscriptionRequested(event, emit),
      );
    });
  }

  Future<void> _onSubscriptionRequested(ContactsListEvent event, Emitter<ContactsListState> emit) async {
    emit(const ContactsListState.loading());
    final hasLocalContacts = await _contactsRepository.hasLocalContacts();
    if (!hasLocalContacts) {
      _logService.t('Fetching contacts from JSON file...');
      await _contactsRepository.getInitialContacts(path: 'assets/contacts.json').then((contacts) async {
        _logService.t('Saving contacts...');
        _contactsRepository.saveContacts(contacts: contacts);
        await _subscribeToQuery(emit);
      }).catchError((error, stackTrace) {
        _logService.e(error: error, stackTrace: stackTrace);
        emit(const ContactsListState.fetchError());
      });
    } else {
      await _subscribeToQuery(emit);
    }
  }

  Future<void> _subscribeToQuery(Emitter<ContactsListState> emit) {
    _logService.t('Listening for contacts database query...');
    return emit.forEach<List<ContactEntity>>(
      _contactsRepository.watchLocalContacts(),
      onData: (contactEntities) => ContactsListState.fetched(contacts: _mapContacts(contactEntities)),
      onError: (error, stackTrace) {
        _logService.e(error: error, stackTrace: stackTrace);
        return const ContactsListState.fetchError();
      },
    );
  }

  List<Contact> _mapContacts(List<ContactEntity> entities) => entities.map((entity) => entity.contact).toList();
}
