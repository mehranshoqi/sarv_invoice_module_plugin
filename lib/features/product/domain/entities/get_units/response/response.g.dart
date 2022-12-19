// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductUnitsResponse _$GetProductUnitsResponseFromJson(
        Map<String, dynamic> json) =>
    GetProductUnitsResponse(
      (json['productUnits'] as List<dynamic>)
          .map((e) => ProductUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
