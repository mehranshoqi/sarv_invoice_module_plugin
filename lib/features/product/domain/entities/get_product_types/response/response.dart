import '../../create_product_type/response/product_type/product_type.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class GetProductTypesResponse extends Equatable {
  final List<ProductType> productTypes;

  GetProductTypesResponse(this.productTypes);

  factory GetProductTypesResponse.fromJson(Map<String, dynamic> data) =>
      _$GetProductTypesResponseFromJson(data);

  @override
  List<Object?> get props => [productTypes];
}
