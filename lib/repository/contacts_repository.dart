import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/datasource/assets_helper.dart';
import 'package:contacts_app/datasource/database_helper.dart';
import 'package:contacts_app/entity/contact_entity.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/model/json_contact.dart';
import 'package:contacts_app/shared/log_service.dart';

class ContactsRepository {
  final AssetsHelper _assetsService;
  final DatabaseHelper _databaseHelper;

  ContactsRepository({
    required AssetsHelper assetsHelper,
    required DatabaseHelper databaseHelper,
  })  : _assetsService = assetsHelper,
        _databaseHelper = databaseHelper;

  Future<List<JsonContact>> getInitialContacts({required String path}) async {
    final json = await _assetsService.parseListFromJson(path: path);
    final contacts = _parseContactsList(json);
    getIt<LogService>().debug('JSON contacts: ${contacts.map((contact) => contact.firstName)}');
    return contacts;
  }

  List<ContactEntity> getLocalContacts() {
    final storedContacts = _databaseHelper.getContacts();
    getIt<LogService>().debug('Database contacts: ${storedContacts.map((entity) => entity.firstName)}');
    return storedContacts;
  }

  List<JsonContact> _parseContactsList(List<dynamic> list) => List<JsonContact>.from(
        list.map((json) => JsonContact.fromJson(json)),
      );

  void saveContacts({required List<JsonContact> contacts}) {
    final entities = contacts.map((contact) => contact.entity).toList();
    _databaseHelper.insertContacts(contacts: entities);
  }

  void saveContact({required JsonContact contact}) => _databaseHelper.upsertContact(contact: contact.entity);

  void updateContact({required Contact contact}) => _databaseHelper.upsertContact(contact: contact.entity);

  void deleteContact({required int id}) => _databaseHelper.deleteContact(id: id);

  Contact? getContact({required int id}) => _databaseHelper.getContact(id: id)?.contact;
}
