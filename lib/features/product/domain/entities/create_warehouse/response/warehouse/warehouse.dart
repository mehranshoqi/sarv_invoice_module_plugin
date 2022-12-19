import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.g.dart';

@JsonSerializable(createToJson: false)
class Warehouse extends Equatable {
  final int number;
  final String name,
      manager,
      phone,
      address,
      description,
      id,
      createDate,
      updateDate;
  final String? storeId;

  factory Warehouse.fromJson(Map<String, dynamic> data) =>
      _$WarehouseFromJson(data);

  const Warehouse(
    this.number,
    this.name,
    this.manager,
    this.phone,
    this.address,
    this.description,
    this.storeId,
    this.id,
    this.createDate,
    this.updateDate,
  );

  @override
  List<Object?> get props => [];
}
