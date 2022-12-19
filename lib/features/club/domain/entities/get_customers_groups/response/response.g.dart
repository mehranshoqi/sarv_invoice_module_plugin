// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCustomersGroupsResponse _$GetCustomersGroupsResponseFromJson(
        Map<String, dynamic> json) =>
    GetCustomersGroupsResponse(
      (json['customerGroups'] as List<dynamic>)
          .map((e) => CustomersGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
