import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_discount.g.dart';

@JsonSerializable(createToJson: false)
class ProductDiscount extends Equatable {
  final String id, name;
  final int discount;

  @JsonKey(ignore: true)
  String? productId;

  factory ProductDiscount.fromJson(Map<String, dynamic> data) =>
      _$ProductDiscountFromJson(data);

  ProductDiscount(this.id, this.name, this.discount);

  @override
  List<Object?> get props => [name, id, productId, discount];
}
