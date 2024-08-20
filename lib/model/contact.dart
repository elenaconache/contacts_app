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
    required String streetAddress1,
    required String streetAddress2,
    required String city,
    required String state,
    required String zipCode,
  }) = _Contact;

  factory Contact.fromJson(Map<String, Object?> json) => _$ContactFromJson(json);

  String get fullName => '$firstName $lastName';
}
