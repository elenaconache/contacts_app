// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:contacts_app/config/register_module.dart' as _i691;
import 'package:contacts_app/datasource/assets_helper.dart' as _i306;
import 'package:contacts_app/datasource/database_helper.dart' as _i644;
import 'package:contacts_app/objectbox.g.dart' as _i567;
import 'package:contacts_app/shared/form_items_helper.dart' as _i772;
import 'package:contacts_app/shared/log_service.dart' as _i430;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i306.AssetsHelper>(() => _i306.AssetsHelper());
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
    await gh.lazySingletonAsync<_i567.Store>(
      () => registerModule.store,
      preResolve: true,
    );
    gh.lazySingleton<_i772.FormItemsHelper>(() => _i772.FormItemsHelper());
    gh.lazySingleton<_i430.LogService>(
        () => _i430.LogService(gh<_i974.Logger>()));
    gh.lazySingleton<_i644.DatabaseHelper>(() => _i644.DatabaseHelper(
          gh<_i567.Store>(),
          gh<_i430.LogService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i691.RegisterModule {}
