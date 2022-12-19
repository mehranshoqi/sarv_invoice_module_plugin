import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'plan/product_discount.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class GetProductDiscoutsResponse extends Equatable {
  final List<ProductDiscount> plans;
  
  @JsonKey(ignore: true)
  String? productId;

  factory GetProductDiscoutsResponse.fromJson(Map<String, dynamic> data) =>
      _$GetProductDiscoutsResponseFromJson(data);

  GetProductDiscoutsResponse({required this.plans, this.productId});

  @override
  List<Object?> get props => [plans];
}
