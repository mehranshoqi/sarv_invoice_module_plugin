// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsResponse _$GetProductsResponseFromJson(Map<String, dynamic> json) =>
    GetProductsResponse(
      (json['items'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['page'] as int,
      json['totalItems'] as int,
      json['pageSize'] as int,
    );
