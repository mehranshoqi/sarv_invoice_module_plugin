import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class GetProductsParams extends Equatable {
  String search;
  @JsonKey(includeIfNull: false)
  String? categoryId, productTypeId;
  @JsonKey(includeIfNull: false)
  bool? joinStocks;

  GetProductsParams({
    required this.search,
    this.categoryId,
    this.productTypeId,
    this.joinStocks,
  });

  Map<String, dynamic> toJson() => _$GetProductsParamsToJson(this);

  @override
  List<Object?> get props => [search, productTypeId, categoryId];
}
