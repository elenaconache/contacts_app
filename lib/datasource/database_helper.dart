import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/entity/contact_entity.dart';
import 'package:contacts_app/objectbox.g.dart';
import 'package:contacts_app/service/log_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DatabaseHelper {
  final Box<ContactEntity> _contactBox;

  DatabaseHelper(Store store) : _contactBox = store.box<ContactEntity>();

  void insertContacts({required List<ContactEntity> contacts}) {
    try {
      final ids = _contactBox.putMany(contacts);
      getIt<LogService>().debug('Inserted ids: $ids');
    } on ObjectBoxException catch (error, stackTrace) {
      getIt<LogService>().exception(error: error, stackTrace: stackTrace);
    }
  }

  void insertContact({required ContactEntity contact}) {
    try {
      final id = _contactBox.put(contact);
      getIt<LogService>().debug('Inserted id: $id');
    } on ObjectBoxException catch (error, stackTrace) {
      getIt<LogService>().exception(error: error, stackTrace: stackTrace);
    }
  }

  void deleteContact({required int id})  => _contactBox.remove(id);

  List<ContactEntity> getContacts() => _contactBox.getAll();
}
