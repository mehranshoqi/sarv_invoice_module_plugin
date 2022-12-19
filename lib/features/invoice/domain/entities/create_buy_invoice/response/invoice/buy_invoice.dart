import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../params/buy_invoice_product/buy_invoice_product.dart';

part 'buy_invoice.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class BuyInvoice extends Equatable {
  final int invoiceNumber, fiscalYear, totalAmount, payableAmount;
  final String sellerId, invoiceDate, id;
  final List<BuyInvoiceProduct> items;
  final String? description, chechoutDate;
  final int servicesCost, tax, discount;

  factory BuyInvoice.fromJson(Map<String, dynamic> data) =>
      _$BuyInvoiceFromJson(data);

  BuyInvoice(
    this.invoiceNumber,
    this.fiscalYear,
    this.totalAmount,
    this.payableAmount,
    this.sellerId,
    this.invoiceDate,
    this.id,
    this.items,
    this.description,
    this.chechoutDate,
    this.servicesCost,
    this.tax,
    this.discount,
  );

  @override
  List<Object?> get props => [
        sellerId,
        // tax,
        description,
        id,
        // payableAmount,
        // totalAmount,
        invoiceDate,
        // invoiceNumber,
      ];
}
