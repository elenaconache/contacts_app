import 'package:contacts_app/bloc/contacts_list/contacts_list_bloc.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:contacts_app/ui/contacts_list/contacts_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../material_test_app.dart';
import '../test_injector.dart';

@GenerateNiceMocks([
  MockSpec<ContactsRepository>(),
  MockSpec<ContactsListBloc>(),
  MockSpec<LogService>(),
  MockSpec<Contact>(),
])
Future<void> theAppIsRunning(WidgetTester tester) async {
  if (getIt.hasScope('test')) {
    await getIt.resetScope();
  } else {
    getIt.pushNewScope(scopeName: 'test');
  }

  configureDependenciesTest();

  final contactsListBloc = getIt<ContactsListBloc>();
  when(contactsListBloc.state).thenReturn(const ContactsListState.loading());

  await tester.pumpWidget(
    MaterialTestApp(
      child: BlocProvider<ContactsListBloc>(
        create: (context) => getIt<ContactsListBloc>(),
        child: const ContactsListView(),
      ),
    ),
  );
}
