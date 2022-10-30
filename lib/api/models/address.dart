import 'package:cubit_simple/api/models/geo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Addsess {
  String street;
  String suite;
  String city;
  @JsonKey(name: 'zipcode')
  String zipCode;
  Geo geo;

  Addsess(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipCode,
      required this.geo});

  factory Addsess.fromJson(Map<String, dynamic> json) =>
      _$AddsessFromJson(json);
}
