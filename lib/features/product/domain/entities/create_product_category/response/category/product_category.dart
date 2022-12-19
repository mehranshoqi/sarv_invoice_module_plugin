import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category.g.dart';

@JsonSerializable(createToJson: false)
class ProductCategory extends Equatable {
  final String name, id;
  final String? productTypeId, storeId;

  factory ProductCategory.fromJson(Map<String, dynamic> data) =>
      _$ProductCategoryFromJson(data);

  const ProductCategory(this.name, this.productTypeId, this.storeId, this.id);

  @override
  List<Object?> get props => [id, name, storeId];
}
