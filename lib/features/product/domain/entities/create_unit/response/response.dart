import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_unit/product_unit.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateUnitResponse extends Equatable {
  final ProductUnit productUnit;

  factory CreateUnitResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateUnitResponseFromJson(data);

  const CreateUnitResponse(this.productUnit);

  @override
  List<Object?> get props => [];
}
