// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMarketersResponse _$GetMarketersResponseFromJson(
        Map<String, dynamic> json) =>
    GetMarketersResponse(
      (json['items'] as List<dynamic>)
          .map((e) => Marketer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
