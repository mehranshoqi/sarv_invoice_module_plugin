import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class GetProductCategoriesParams extends Equatable {
  final String productTypeId;

  const GetProductCategoriesParams(this.productTypeId);

  Map<String, dynamic> toJson() => _$GetProductCategoriesParamsToJson(this);

  @override
  List<Object?> get props => [productTypeId];
}
