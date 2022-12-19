// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoicePlan _$InvoicePlanFromJson(Map<String, dynamic> json) => InvoicePlan(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      value: json['value'] as int,
      discount: json['discount'] as int,
      maxDiscount: json['maxDiscount'] as int?,
      nextPurchase: json['nextPurchase'] as bool,
    );
