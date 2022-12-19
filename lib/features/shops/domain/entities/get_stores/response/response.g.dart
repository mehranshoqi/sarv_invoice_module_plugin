// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStoresResponse _$GetStoresResponseFromJson(Map<String, dynamic> json) =>
    GetStoresResponse(
      (json['stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
