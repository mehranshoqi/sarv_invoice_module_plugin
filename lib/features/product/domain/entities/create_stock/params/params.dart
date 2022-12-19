import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateStockParams extends Equatable {
  int sellPrice, buyPrice, count;
  String warehouseId, productId;

  CreateStockParams(this.sellPrice, this.buyPrice, this.count, this.warehouseId,
      this.productId);

  Map<String, dynamic> toJson() => _$CreateStockParamsToJson(this);

  @override
  List<Object?> get props => [];
}
