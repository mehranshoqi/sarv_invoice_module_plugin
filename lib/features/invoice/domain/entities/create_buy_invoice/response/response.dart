import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'invoice/buy_invoice.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateBuyInvoiceResponse extends Equatable {
  final BuyInvoice invoice;

  factory CreateBuyInvoiceResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateBuyInvoiceResponseFromJson(data);

  const CreateBuyInvoiceResponse(this.invoice);

  @override
  List<Object?> get props => [invoice];
}
