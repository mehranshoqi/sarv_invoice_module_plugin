// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWarehousesResponse _$GetWarehousesResponseFromJson(
        Map<String, dynamic> json) =>
    GetWarehousesResponse(
      (json['items'] as List<dynamic>)
          .map((e) => Warehouse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['page'] as int,
      json['totalItems'] as int,
      json['pageSize'] as int,
    );
