// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JsonContactImpl _$$JsonContactImplFromJson(Map<String, dynamic> json) =>
    _$JsonContactImpl(
      contactId: json['contactID'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      streetAddress1: json['streetAddress1'] as String?,
      streetAddress2: json['streetAddress2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
    );

Map<String, dynamic> _$$JsonContactImplToJson(_$JsonContactImpl instance) =>
    <String, dynamic>{
      'contactID': instance.contactId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
    };
