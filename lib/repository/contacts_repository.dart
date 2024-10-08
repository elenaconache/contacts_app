import 'package:contacts_app/datasource/assets_helper.dart';
import 'package:contacts_app/datasource/database_helper.dart';
import 'package:contacts_app/entity/contact_entity.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/model/json_contact.dart';
import 'package:contacts_app/shared/log_service.dart';

class ContactsRepository {
  final AssetsHelper _assetsService;
  final DatabaseHelper _databaseHelper;
  final LogService _logService;

  ContactsRepository({
    required AssetsHelper assetsHelper,
    required DatabaseHelper databaseHelper,
    required LogService logService,
  })  : _assetsService = assetsHelper,
        _databaseHelper = databaseHelper,
        _logService = logService;

  Future<List<JsonContact>> getInitialContacts({required String path}) async {
    _logService.t('Waiting for artificial delay to pass...');
    await Future.delayed(const Duration(milliseconds: 600));
    _logService.t('Artificial delay has passed.');

    final json = await _assetsService.parseListFromJson(path: path);
    final contacts = _parseContactsList(json);
    if (contacts.isEmpty) {
      _logService.w('Provided JSON contacts list was empty.');
    } else {
      _logService.d('Parsed JSON contacts: ${contacts.map((contact) => contact.firstName)}');
    }
    return contacts;
  }

  Future<bool> hasLocalContacts() async {
    _logService.t('Waiting for artificial delay to pass...');
    await Future.delayed(const Duration(milliseconds: 600));
    _logService.t('Artificial delay has passed.');

    final hasContacts = _databaseHelper.hasContacts();
    _logService.d('Has local contacts: $hasContacts');
    return hasContacts;
  }

  Stream<List<ContactEntity>> watchLocalContacts() => _databaseHelper.watchContacts();

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

  Contact? getContact({required int id}) {
    final result = _databaseHelper.getContact(id: id)?.contact;
    _logService.d('Contact by id: $result');
    return result;
  }
}
