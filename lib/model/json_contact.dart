import 'package:contacts_app/entity/contact_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_contact.freezed.dart';

part 'json_contact.g.dart';

@freezed
class JsonContact with _$JsonContact {
  const JsonContact._();

  const factory JsonContact({
    @JsonKey(name: 'contactID') required String contactId,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _JsonContact;

  factory JsonContact.fromJson(Map<String, Object?> json) => _$JsonContactFromJson(json);

  ContactEntity get entity => ContactEntity(
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
