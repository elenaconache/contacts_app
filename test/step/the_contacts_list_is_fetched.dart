import 'package:contacts_app/ui/contacts_list/contacts_list_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'the_app_is_running.mocks.dart';

/// Usage: the contacts list is fetched
Future<void> theContactsListIsFetched(WidgetTester tester) async {
  final mockedContact = MockContact();
  when(mockedContact.fullName).thenReturn('Full Name');
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(body: ContactsListSuccess(contacts: [mockedContact])),
    ),
  );
}
