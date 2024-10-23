import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;
const devEnvironment = 'dev';

@InjectableInit(generateForDir: ['lib'], initializerName: 'init')
Future<void> configureDependencies({String? environment}) =>
    getIt.init(environment: environment);
