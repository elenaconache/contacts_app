import 'dart:async';

import 'package:contacts_app/bloc/contacts_list/contacts_list_bloc.dart';
import 'package:contacts_app/entity/contact_entity.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

import 'contacts_list_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ContactsRepository>(),
  MockSpec<LogService>(),
  MockSpec<ContactEntity>(),
  MockSpec<Contact>(),
])
void main() {
  group('Contacts List Bloc', () {
    late ContactsListBloc contactsBloc;
    late MockContactsRepository mockRepository;
    late LogService logService;
    late ContactEntity entity;
    late Contact contact;

    setUp(() {
      mockRepository = MockContactsRepository();
      logService = MockLogService();

      contactsBloc = ContactsListBloc(contactsRepository: mockRepository, logService: logService);

      entity = MockContactEntity();
      contact = MockContact();
      when(entity.contact).thenReturn(contact);
    });

    tearDown(() => contactsBloc.close());

    test('Initial state is loading', () {
      expect(
        contactsBloc.state.map(fetched: (_) => false, loading: (_) => true, fetchError: (_) => false),
        equals(true),
      );
    });

    blocTest<ContactsListBloc, ContactsListState>(
      'Emits fetched state when repository returns contacts',
      build: () => contactsBloc,
      act: (bloc) {
        when(mockRepository.watchLocalContacts()).thenAnswer((_) => Stream.value([entity]));
        when(mockRepository.hasLocalContacts()).thenAnswer((_) async => true);
        bloc.add(const ContactsListEvent.subscriptionRequested());
      },
      verify: (bloc) {
        expect(bloc.state, equals(ContactsListState.fetched(contacts: [contact])));
        verify(mockRepository.hasLocalContacts()).called(1);
        verify(mockRepository.watchLocalContacts()).called(1);
        verifyNever(mockRepository.getInitialContacts(path: anyNamed('path')));
      },
    );

    blocTest<ContactsListBloc, ContactsListState>(
      'Emits error state when the stream returns an error',
      build: () => contactsBloc,
      act: (bloc) {
        when(mockRepository.watchLocalContacts())
            .thenAnswer((realInvocation) => Stream.error(Exception('Mock exception')));
        when(mockRepository.hasLocalContacts()).thenAnswer((_) async => true);
        bloc.add(const ContactsListEvent.subscriptionRequested());
      },
      verify: (bloc) {
        expect(bloc.state, equals(const ContactsListState.fetchError()));
        verify(mockRepository.hasLocalContacts()).called(1);
        verify(mockRepository.watchLocalContacts()).called(1);
        verifyNever(mockRepository.getInitialContacts(path: anyNamed('path')));
      },
    );
  });
}
