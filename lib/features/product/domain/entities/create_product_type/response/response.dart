import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_type/product_type.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateProductTypeResponse extends Equatable {
  final ProductType productType;

  const CreateProductTypeResponse(this.productType);

  factory CreateProductTypeResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateProductTypeResponseFromJson(data);

  @override
  List<Object?> get props => [productType];
}
