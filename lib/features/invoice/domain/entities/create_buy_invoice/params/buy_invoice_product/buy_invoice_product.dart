import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_invoice_product.g.dart';

@JsonSerializable(explicitToJson: true)
class BuyInvoiceProduct extends Equatable {
  String productId, warehouseId;
  int count, buyPrice;

  String? id, invoiceId, name;

  @JsonKey(ignore: true)
  int? totalPrice;

  @JsonKey(ignore: true)
  int? totalDiscount;

  @JsonKey(ignore: true)
  int? totalPriceWithDiscount;

  BuyInvoiceProduct(
    this.productId,
    this.warehouseId,
    this.count,
    this.buyPrice,
    this.id,
    this.invoiceId,
  );

  Map<String, dynamic> toJson() => _$BuyInvoiceProductToJson(this);

  factory BuyInvoiceProduct.fromJson(Map<String, dynamic> data) =>
      _$BuyInvoiceProductFromJson(data);

  @override
  List<Object?> get props => [productId, buyPrice, count, id, totalPrice];
}
