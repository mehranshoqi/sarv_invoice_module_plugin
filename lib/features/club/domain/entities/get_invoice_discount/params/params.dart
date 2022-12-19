import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class GetInvoiceDiscountParams extends Equatable {
  String customerId;

  GetInvoiceDiscountParams({required this.customerId});

  Map<String, dynamic> toJson() => _$GetInvoiceDiscountParamsToJson(this);

  @override
  List<Object?> get props => [customerId];
}
