// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductCategoriesResponse _$GetProductCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    GetProductCategoriesResponse(
      (json['productCategories'] as List<dynamic>)
          .map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
