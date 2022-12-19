import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_invoice_product.g.dart';

@JsonSerializable(createFactory: false)
class SellInvoiceProduct extends Equatable {
  final String productId, warehouseId, stockId;
  final int count, price;
  final List<String> discountPlans;

  const SellInvoiceProduct(
    this.productId,
    this.discountPlans,
    this.warehouseId,
    this.stockId,
    this.count,
    this.price,
  );

  Map<String, dynamic> toJson() => _$SellInvoiceProductToJson(this);

  @override
  List<Object?> get props => [];
}
