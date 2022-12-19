import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_unit.g.dart';

@JsonSerializable(createToJson: false)
class ProductUnit extends Equatable {
  final String name, id;
  final String? storeId;

  factory ProductUnit.fromJson(Map<String, dynamic> data) =>
      _$ProductUnitFromJson(data);

  const ProductUnit(this.name, this.storeId, this.id);

  @override
  List<Object?> get props => [];
}
