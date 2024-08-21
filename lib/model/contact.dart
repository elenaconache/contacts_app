import 'package:contacts_app/entity/contact_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const Contact._();

  const factory Contact({
    @JsonKey(name: 'contactID') required String contactId,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? zipCode,
  }) = _Contact;

  factory Contact.fromJson(Map<String, Object?> json) => _$ContactFromJson(json);

  String get fullName => '$firstName $lastName';

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
