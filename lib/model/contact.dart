import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const Contact._();

  const factory Contact({
    required int entityId,
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
}
