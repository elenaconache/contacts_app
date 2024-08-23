import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/entity/contact_entity.dart';
import 'package:contacts_app/objectbox.g.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DatabaseHelper {
  final Box<ContactEntity> _contactBox;

  DatabaseHelper(Store store) : _contactBox = store.box<ContactEntity>();

  void insertContacts({required List<ContactEntity> contacts}) {
    try {
      final ids = _contactBox.putMany(contacts);
      getIt<LogService>().debug('Objects ids: $ids');
    } on ObjectBoxException catch (error, stackTrace) {
      getIt<LogService>().exception(error: error, stackTrace: stackTrace);
    }
  }

  void upsertContact({required ContactEntity contact}) {
    try {
      final id = _contactBox.put(contact);
      getIt<LogService>().debug('Object id: $id');
    } on ObjectBoxException catch (error, stackTrace) {
      getIt<LogService>().exception(error: error, stackTrace: stackTrace);
    }
  }

  void deleteContact({required int id}) => _contactBox.remove(id);

  List<ContactEntity> getContacts() => _contactBox.getAll();

  ContactEntity? getContact({required int id}) => _contactBox.get(id);

  Stream<List<ContactEntity>> watchContacts() =>
      _contactBox.query().watch(triggerImmediately: true).map((query) => query.find());

  bool hasContacts() => !_contactBox.isEmpty();
}
