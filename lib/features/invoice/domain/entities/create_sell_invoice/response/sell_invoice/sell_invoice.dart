import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_invoice.g.dart';

@JsonSerializable(createToJson: false)
class SellInvoice extends Equatable {
  final String id, customerId, storeId;

  factory SellInvoice.fromJson(Map<String, dynamic> data) =>
      _$SellInvoiceFromJson(data);

  const SellInvoice(this.id, this.customerId, this.storeId);

  @override
  List<Object?> get props => [id, customerId];
}
