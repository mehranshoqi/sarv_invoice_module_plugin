import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_unit/response/product_unit/product_unit.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class GetProductUnitsResponse extends Equatable {
  final List<ProductUnit> productUnits;

  factory GetProductUnitsResponse.fromJson(Map<String, dynamic> data) =>
      _$GetProductUnitsResponseFromJson(data);

  const GetProductUnitsResponse(this.productUnits);

  @override
  List<Object?> get props => [];
}
