import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/datasource/assets_helper.dart';
import 'package:contacts_app/datasource/database_helper.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/service/log_service.dart';

class ContactsRepository {
  final AssetsHelper _assetsService;
  final DatabaseHelper _databaseHelper;

  ContactsRepository({
    required AssetsHelper assetsHelper,
    required DatabaseHelper databaseHelper,
  })  : _assetsService = assetsHelper,
        _databaseHelper = databaseHelper;

  Future<List<Contact>> getInitialContacts({required String path}) async {
    final storedContacts = _databaseHelper.getContacts();
    if (storedContacts.isEmpty) {
      final json = await _assetsService.parseListFromJson(path: path);
      final contacts = _parseContactsList(json);
      getIt<LogService>().debug('JSON contacts: ${contacts.map((contact) => contact.firstName)}');
      return contacts;
    } else {
      getIt<LogService>().debug('Database contacts: ${storedContacts.map((entity) => entity.firstName)}');
      return storedContacts.map((entity) => entity.contact).toList();
    }
  }

  List<Contact> _parseContactsList(List<dynamic> list) => List<Contact>.from(
        list.map((json) => Contact.fromJson(json)),
      );

  void saveContacts({required List<Contact> contacts}) {
    final entities = contacts.map((contact) => contact.entity).toList();
    _databaseHelper.insertContacts(contacts: entities);
  }

  void saveContact({required Contact contact}) => _databaseHelper.insertContact(contact: contact.entity);
}
