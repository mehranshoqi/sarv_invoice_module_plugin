import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateProductParams extends Equatable {
  String name, code, productTypeId, categoryId, unitId;
  bool onlineSale, isActive;
  int reorderPoint;

  CreateProductParams(
    this.name,
    this.code,
    this.reorderPoint,
    this.productTypeId,
    this.categoryId,
    this.unitId,
    this.onlineSale,
    this.isActive,
  );

  Map<String, dynamic> toJson() => _$CreateProductParamsToJson(this);

  @override
  List<Object?> get props => [name, code, productTypeId, categoryId];
}
