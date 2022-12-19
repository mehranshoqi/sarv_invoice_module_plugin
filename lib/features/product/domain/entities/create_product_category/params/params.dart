import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
// ignore: must_be_immutable
class CreateProductCategoryParams extends Equatable {
  String name, productTypeId;

  CreateProductCategoryParams(this.name, this.productTypeId);

  Map<String, dynamic> toJson() => _$CreateProductCategoryParamsToJson(this);

  @override
  List<Object?> get props => [];
}
