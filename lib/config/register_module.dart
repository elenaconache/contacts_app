import 'package:contacts_app/objectbox.g.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger(printer: PrefixPrinter(PrettyPrinter(methodCount: 3, colors: false)));

  @lazySingleton
  @preResolve
  Future<Store> get store async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    return openStore(directory: join(documentsDirectory.path, 'contacts-application-store'));
  }
}
