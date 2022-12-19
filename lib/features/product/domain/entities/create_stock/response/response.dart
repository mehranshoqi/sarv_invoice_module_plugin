import 'stock/stock.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class CreateStockResponse extends Equatable {
  final Stock stock;

  factory CreateStockResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateStockResponseFromJson(data);

  CreateStockResponse(this.stock);

  @override
  List<Object?> get props => [stock];
}
