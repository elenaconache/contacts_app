import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/models/contact.dart';
import 'package:contacts_app/service/assets_service.dart';
import 'package:contacts_app/service/log_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ContactsRepository {
  final AssetsService _assetsService;

  ContactsRepository({required AssetsService assetsService}) : _assetsService = assetsService;

  Future<List<Contact>> getContacts({required String path}) async {
    final json = await _assetsService.parseListFromJson(path: path);
    final contacts = _parseContactsList(json);
    getIt<LogService>().debug('Contacts first names: ${contacts.map((contact) => contact.firstName)}');
    return contacts;
  }

  List<Contact> _parseContactsList(List<dynamic> list) => List<Contact>.from(
        list.map((json) => Contact.fromJson(json)),
      );
}
