// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductTypesResponse _$GetProductTypesResponseFromJson(
        Map<String, dynamic> json) =>
    GetProductTypesResponse(
      (json['productTypes'] as List<dynamic>)
          .map((e) => ProductType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
