import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_type.g.dart';

@JsonSerializable(createToJson: false)
class ProductType extends Equatable {
  final String name, id, enumValue;
  final int? productsCount;

  factory ProductType.fromJson(Map<String, dynamic> data) =>
      _$ProductTypeFromJson(data);

  const ProductType(
    this.name,
    this.id,
    this.enumValue,
    this.productsCount,
  );

  @override
  List<Object?> get props => [];
}
