// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCustomersResponse _$GetCustomersResponseFromJson(
        Map<String, dynamic> json) =>
    GetCustomersResponse(
      (json['items'] as List<dynamic>)
          .map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['page'] as int,
      json['totalItems'] as int,
      json['pageSize'] as int,
    );
