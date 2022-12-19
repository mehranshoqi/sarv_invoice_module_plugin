import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_warehouse/response/warehouse/warehouse.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class GetWarehousesResponse extends Equatable {
  final List<Warehouse> items;
  final int page, totalItems, pageSize;

  factory GetWarehousesResponse.fromJson(Map<String, dynamic> data) =>
      _$GetWarehousesResponseFromJson(data);

  const GetWarehousesResponse(
      this.items, this.page, this.totalItems, this.pageSize);

  @override
  List<Object?> get props => [items, page, totalItems];
}
