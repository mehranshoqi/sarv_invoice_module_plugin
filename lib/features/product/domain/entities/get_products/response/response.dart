import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_product/response/product/product.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class GetProductsResponse extends Equatable {
  final List<Product> items;
  final int page, totalItems, pageSize;

  factory GetProductsResponse.fromJson(Map<String, dynamic> data) =>
      _$GetProductsResponseFromJson(data);

  const GetProductsResponse(
      this.items, this.page, this.totalItems, this.pageSize);

  @override
  List<Object?> get props => [items, totalItems, page, pageSize];
}
