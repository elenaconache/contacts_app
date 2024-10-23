// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:contacts_app/bloc/contacts_list/contacts_list_bloc.dart'
    as _i263;
import 'package:contacts_app/shared/log_service.dart' as _i430;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'test_injector.dart' as _i470;

const String _test = 'test';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initTest({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i263.ContactsListBloc>(
      () => _i470.ContactsListBlocMock(),
      registerFor: {_test},
    );
    gh.lazySingleton<_i430.LogService>(
      () => _i470.LogServiceMock(),
      registerFor: {_test},
    );
    return this;
  }
}
