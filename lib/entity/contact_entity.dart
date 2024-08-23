import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/model/json_contact.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ContactEntity {
  int id;

  @Unique()
  String contactId;

  String firstName;
  String lastName;
  String phoneNumber;
  String? streetAddress1;
  String? streetAddress2;
  String? city;
  String? state;
  String? zipCode;

  ContactEntity({
    this.id = 0,
    required this.contactId,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.state,
    this.zipCode,
  });

  JsonContact get jsonContact => JsonContact(
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

  Contact get contact => Contact(
        entityId: id,
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
