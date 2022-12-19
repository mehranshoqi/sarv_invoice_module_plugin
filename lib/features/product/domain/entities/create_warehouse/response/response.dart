import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'warehouse/warehouse.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateWarehouseResponse extends Equatable {
  final Warehouse warehouse;

  factory CreateWarehouseResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateWarehouseResponseFromJson(data);

  const CreateWarehouseResponse(this.warehouse);

  @override
  List<Object?> get props => [];
}
