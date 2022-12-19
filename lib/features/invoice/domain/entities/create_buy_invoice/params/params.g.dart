// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$CreateBuyInvoiceParamsToJson(
        CreateBuyInvoiceParams instance) =>
    <String, dynamic>{
      'stringify': instance.stringify,
      'hashCode': instance.hashCode,
      'sellerId': instance.sellerId,
      'checkoutType': instance.checkoutType,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'invoiceNumber': instance.invoiceNumber,
      'invoiceDate': instance.invoiceDate,
      'props': instance.props,
    };
