// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountPlan _$DiscountPlanFromJson(Map<String, dynamic> json) => DiscountPlan(
      json['name'] as String,
      json['target'] as String,
      json['type'] as String,
      json['id'] as String,
      json['value'] as int?,
      json['discount'] as int?,
      json['maxDiscount'] as int?,
      json['minPurchaseTimes'] as int?,
      json['minAwayDays'] as int?,
      json['birthday'] as bool,
      json['isActive'] as bool,
      json['albumId'] as String?,
      json['createDate'] as String?,
      (json['groups'] as List<dynamic>).map((e) => e as String).toList(),
      (json['days'] as List<dynamic>).map((e) => e as String).toList(),
      ProductsAlbum.fromJson(json['album'] as Map<String, dynamic>),
    );
