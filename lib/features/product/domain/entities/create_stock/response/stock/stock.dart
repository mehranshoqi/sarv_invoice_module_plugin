import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.g.dart';

@JsonSerializable(createToJson: false)
class Stock extends Equatable {
  final int buyPrice, sellPrice, count;
  final String productid, warehouseId, id;
  final String? sellItemId, buyItemId;

  factory Stock.fromJson(Map<String, dynamic> data) => _$StockFromJson(data);

  Stock(this.buyPrice, this.sellPrice, this.count, this.productid,
      this.warehouseId, this.id, this.sellItemId, this.buyItemId);

  @override
  List<Object?> get props => [id, buyItemId, sellItemId, sellPrice, count];
}
