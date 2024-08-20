import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class LogService {
  final Logger _logger;

  LogService(this._logger);

  void exception({required dynamic error, required StackTrace stackTrace}) =>
      _logger.e('Exception', stackTrace: stackTrace, error: error);

  void debug(String message) => _logger.d(message);
}
