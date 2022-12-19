import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'sell_invoice_product/sell_invoice_product.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class CreateSellInvoiceParams extends Equatable {
  final String customerId, chekcoutType;
  final List<String> discountPlans, prevDiscounts;
  final List<SellInvoiceProduct> items;

  const CreateSellInvoiceParams(
    this.customerId,
    this.chekcoutType,
    this.prevDiscounts,
    this.items,
    this.discountPlans,
  );

  Map<String, dynamic> toJson() => _$CreateSellInvoiceParamsToJson(this);

  @override
  List<Object?> get props => [items, customerId, discountPlans];
}
