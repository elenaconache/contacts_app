import 'package:collection/collection.dart';
import 'package:contacts_app/entity/contact_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const Contact._();

  const factory Contact({
    required int entityId,
    required String contactId,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _Contact;

  String get fullName => '$firstName $lastName';

  String get address => [
        streetAddress1,
        streetAddress2,
        [city, state, zipCode].whereNotNull().join(' ')
      ].whereNotNull().where((element) => element.isNotEmpty).toList().join('\n');

  ContactEntity get entity => ContactEntity(
        id: entityId,
        contactId: contactId,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        city: city,
        state: state,
        streetAddress1: streetAddress1,
        streetAddress2: streetAddress2,
        zipCode: zipCode,
      );
}
