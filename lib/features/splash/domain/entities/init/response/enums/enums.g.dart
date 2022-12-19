// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitEnums _$InitEnumsFromJson(Map<String, dynamic> json) => InitEnums(
      (json['gender'] as List<dynamic>)
          .map((e) => BEnum.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['permission'] as List<dynamic>)
          .map((e) => BEnum.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['productType'] as List<dynamic>)
          .map((e) => BEnum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InitEnumsToJson(InitEnums instance) => <String, dynamic>{
      'gender': instance.gender,
      'permission': instance.permission,
      'productType': instance.productType,
    };
