import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'buy_invoice_product/buy_invoice_product.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class CreateBuyInvoiceParams extends Equatable {
  String sellerId, checkoutType;
  final List<BuyInvoiceProduct> items;
  int invoiceNumber, invoiceDate;

  CreateBuyInvoiceParams(
    this.sellerId,
    this.checkoutType,
    this.items,
    this.invoiceNumber,
    this.invoiceDate,
  );

  Map<String, dynamic> toJson() => _$CreateBuyInvoiceParamsToJson(this);

  @override
  List<Object?> get props => [
        sellerId,
        checkoutType,
        items,
        invoiceDate,
        invoiceNumber,
      ];
}
