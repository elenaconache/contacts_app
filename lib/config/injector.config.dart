// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:contacts_app/config/register_module.dart' as _i691;
import 'package:contacts_app/repository/contacts_repository.dart' as _i452;
import 'package:contacts_app/service/assets_service.dart' as _i904;
import 'package:contacts_app/service/log_service.dart' as _i359;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i974.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i904.AssetsService>(() => _i904.AssetsService());
    gh.lazySingleton<_i452.ContactsRepository>(() =>
        _i452.ContactsRepository(assetsService: gh<_i904.AssetsService>()));
    gh.lazySingleton<_i359.LogService>(
        () => _i359.LogService.from(gh<_i974.Logger>()));
    return this;
  }
}

class _$RegisterModule extends _i691.RegisterModule {}
