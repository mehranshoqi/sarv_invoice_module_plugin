import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_product_category/response/category/product_category.dart';

part 'response.g.dart';

@JsonSerializable(
    createToJson: false, explicitToJson: true, genericArgumentFactories: true)
class GetProductCategoriesResponse extends Equatable {
  final List<ProductCategory> productCategories;

  factory GetProductCategoriesResponse.fromJson(Map<String, dynamic> data) =>
      _$GetProductCategoriesResponseFromJson(data);

  const GetProductCategoriesResponse(this.productCategories);

  @override
  List<Object?> get props => [productCategories];
}
