import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'sell_invoice/sell_invoice.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateSellInvoiceResponse extends Equatable {
  final SellInvoice invoice;

  factory CreateSellInvoiceResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateSellInvoiceResponseFromJson(data);

  const CreateSellInvoiceResponse(this.invoice);

  @override
  List<Object?> get props => [];
}
