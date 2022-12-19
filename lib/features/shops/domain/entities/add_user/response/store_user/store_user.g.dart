// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreUser _$StoreUserFromJson(Map<String, dynamic> json) => StoreUser(
      json['storeId'] as String,
      json['userId'] as String,
      json['createDate'] as String,
      json['updateDate'] as String,
      (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
      UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      json['roleId'] as String?,
    );
