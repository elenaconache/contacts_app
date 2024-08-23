import 'package:contacts_app/entity/contact_entity.dart';
import 'package:contacts_app/objectbox.g.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DatabaseHelper {
  final Box<ContactEntity> _contactBox;
  final LogService _logService;

  DatabaseHelper(Store store, LogService logService)
      : _contactBox = store.box<ContactEntity>(),
        _logService = logService;

  void insertContacts({required List<ContactEntity> contacts}) {
    try {
      final ids = _contactBox.putMany(contacts);
      _logService.debug('Saved objects with ids: $ids');
    } on ObjectBoxException catch (error, stackTrace) {
      _logService.exception(error: error, stackTrace: stackTrace);
    }
  }

  void upsertContact({required ContactEntity contact}) {
    try {
      final id = _contactBox.put(contact);
      _logService.debug('Saved object with id: $id');
    } on ObjectBoxException catch (error, stackTrace) {
      _logService.exception(error: error, stackTrace: stackTrace);
    }
  }

  void deleteContact({required int id}) {
    final removed = _contactBox.remove(id);
    _logService.debug('Removing object with id $id, status: ${removed ? 'Success' : 'Failed'}');
  }

  ContactEntity? getContact({required int id}) => _contactBox.get(id);

  Stream<List<ContactEntity>> watchContacts() =>
      _contactBox.query().watch(triggerImmediately: true).map((query) => query.find());

  bool hasContacts() => !_contactBox.isEmpty();
}
