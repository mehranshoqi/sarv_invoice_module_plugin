import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class GetProductDiscountParams extends Equatable {
  final String customerId, productId;

  const GetProductDiscountParams(this.customerId, this.productId);

  Map<String, dynamic> toJson() => _$GetProductDiscountParamsToJson(this);

  @override
  List<Object?> get props => [productId, customerId];
}
