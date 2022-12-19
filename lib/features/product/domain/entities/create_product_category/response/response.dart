import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category/product_category.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateProductCategoryResponse extends Equatable {
  final ProductCategory productCategory;

  factory CreateProductCategoryResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateProductCategoryResponseFromJson(data);

  const CreateProductCategoryResponse(this.productCategory);

  @override
  List<Object?> get props => [productCategory];
}
