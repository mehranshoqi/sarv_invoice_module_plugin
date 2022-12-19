// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['createDate'] as String,
      json['roleId'] as String?,
      (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
      UserInfo.fromJson(json['user'] as Map<String, dynamic>),
    );
