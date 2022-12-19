import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_plan.g.dart';

@JsonSerializable(createToJson: false)
class InvoicePlan extends Equatable {
  final String id, name, type;
  int value, discount;
  final int? maxDiscount;
  final bool nextPurchase;

  @JsonKey(ignore: true)
  bool isActive;

  factory InvoicePlan.fromJson(Map<String, dynamic> data) =>
      _$InvoicePlanFromJson(data);

  InvoicePlan({
    required this.id,
    required this.name,
    required this.type,
    required this.value,
    required this.discount,
    required this.maxDiscount,
    required this.nextPurchase,
    this.isActive = false,
  });

  @override
  List<Object?> get props => [id, name, discount];
}
