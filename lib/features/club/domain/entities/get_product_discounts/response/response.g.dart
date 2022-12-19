// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductDiscoutsResponse _$GetProductDiscoutsResponseFromJson(
        Map<String, dynamic> json) =>
    GetProductDiscoutsResponse(
      plans: (json['plans'] as List<dynamic>)
          .map((e) => ProductDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
