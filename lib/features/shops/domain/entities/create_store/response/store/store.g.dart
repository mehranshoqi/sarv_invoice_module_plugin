// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      json['name'] as String?,
      json['phone'] as String?,
      json['address'] as String?,
      json['ownerId'] as String?,
      json['id'] as String?,
      json['createDate'] as String?,
      json['description'] as String?,
      json['logo'] as String?,
      (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
