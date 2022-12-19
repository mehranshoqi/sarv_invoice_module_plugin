import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product/product.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateProductResponse extends Equatable {
  final Product product;

  const CreateProductResponse(this.product);

  factory CreateProductResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateProductResponseFromJson(data);

  @override
  List<Object?> get props => [];
}
