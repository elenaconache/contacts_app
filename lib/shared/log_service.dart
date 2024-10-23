import 'package:contacts_app/config/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(env: [devEnvironment])
class LogService {
  final Logger _logger;

  LogService(this._logger);

  void e({required dynamic error, required StackTrace stackTrace}) => _logger.e('Exception', stackTrace: stackTrace, error: error);

  void d(String message) => _logger.d(message, time: DateTime.now());

  void t(String message) => _logger.d(message, time: DateTime.now());

  void w(String message) => _logger.w(message, time: DateTime.now());

  void i(String message) => _logger.i(message, time: DateTime.now());
}
