// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$CreateSellInvoiceParamsToJson(
        CreateSellInvoiceParams instance) =>
    <String, dynamic>{
      'stringify': instance.stringify,
      'hashCode': instance.hashCode,
      'customerId': instance.customerId,
      'chekcoutType': instance.chekcoutType,
      'discountPlans': instance.discountPlans,
      'prevDiscounts': instance.prevDiscounts,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'props': instance.props,
    };
