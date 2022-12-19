// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyInvoice _$BuyInvoiceFromJson(Map<String, dynamic> json) => BuyInvoice(
      json['invoiceNumber'] as int,
      json['fiscalYear'] as int,
      json['totalAmount'] as int,
      json['payableAmount'] as int,
      json['sellerId'] as String,
      json['invoiceDate'] as String,
      json['id'] as String,
      (json['items'] as List<dynamic>)
          .map((e) => BuyInvoiceProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String?,
      json['chechoutDate'] as String?,
      json['servicesCost'] as int,
      json['tax'] as int,
      json['discount'] as int,
    );
