// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseError _$ResponseErrorFromJson(Map<String, dynamic> json) =>
    ResponseError(
      statusCode: json['statusCode'] as int,
      message:
          (json['message'] as List<dynamic>).map((e) => e as String).toList(),
      error: json['error'] as String,
    );
