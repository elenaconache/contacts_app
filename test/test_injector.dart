import 'package:contacts_app/bloc/contacts_list/contacts_list_bloc.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'step/the_app_is_running.mocks.dart';
import 'test_injector.config.dart';

final getIt = GetIt.instance;
const testEnvironment = 'test';

@InjectableInit(generateForDir: ['test'], initializerName: 'initTest', preferRelativeImports: true)
void configureDependenciesTest() => getIt.initTest(environment: testEnvironment);

@LazySingleton(as: LogService, env: [testEnvironment])
class LogServiceMock extends MockLogService {}

@LazySingleton(as: ContactsListBloc, env: [testEnvironment])
class ContactsListBlocMock extends MockContactsListBloc {}
