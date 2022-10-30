// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Addsess _$AddsessFromJson(Map<String, dynamic> json) => Addsess(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipCode: json['zipcode'] as String,
      geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddsessToJson(Addsess instance) => <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipCode,
      'geo': instance.geo,
    };
