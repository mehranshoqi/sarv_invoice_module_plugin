// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_invoice_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyInvoiceProduct _$BuyInvoiceProductFromJson(Map<String, dynamic> json) =>
    BuyInvoiceProduct(
      json['productId'] as String,
      json['warehouseId'] as String,
      json['count'] as int,
      json['buyPrice'] as int,
      json['id'] as String?,
      json['invoiceId'] as String?,
    )..name = json['name'] as String?;

Map<String, dynamic> _$BuyInvoiceProductToJson(BuyInvoiceProduct instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'warehouseId': instance.warehouseId,
      'count': instance.count,
      'buyPrice': instance.buyPrice,
      'id': instance.id,
      'invoiceId': instance.invoiceId,
      'name': instance.name,
    };
