import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/datasource/assets_helper.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/service/log_service.dart';

class ContactsRepository {
  final AssetsHelper _assetsService;

  ContactsRepository({required AssetsHelper assetsHelper}) : _assetsService = assetsHelper;

  Future<List<Contact>> getInitialContacts({required String path}) async {
    final json = await _assetsService.parseListFromJson(path: path);
    final contacts = _parseContactsList(json);
    getIt<LogService>().debug('Contacts first names: ${contacts.map((contact) => contact.firstName)}');
    return contacts;
  }

  List<Contact> _parseContactsList(List<dynamic> list) => List<Contact>.from(
        list.map((json) => Contact.fromJson(json)),
      );
}
