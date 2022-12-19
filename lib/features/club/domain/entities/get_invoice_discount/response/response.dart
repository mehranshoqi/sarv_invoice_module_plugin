import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'plan/invoice_plan.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class GetInvoiceDiscoutsResponse extends Equatable {
  final List<InvoicePlan> plans;

  factory GetInvoiceDiscoutsResponse.fromJson(Map<String, dynamic> data) =>
      _$GetInvoiceDiscoutsResponseFromJson(data);

  const GetInvoiceDiscoutsResponse(this.plans);

  @override
  List<Object?> get props => [plans];
}
