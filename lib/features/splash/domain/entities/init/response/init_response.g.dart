// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitResponse _$InitResponseFromJson(Map<String, dynamic> json) => InitResponse(
      InitEnums.fromJson(json['enums'] as Map<String, dynamic>),
      (json['discountPlanRules'] as List<dynamic>)
          .map((e) => DiscountPlanRule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InitResponseToJson(InitResponse instance) =>
    <String, dynamic>{
      'enums': instance.enums,
      'discountPlanRules': instance.discountPlanRules,
    };
