import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';

@JsonSerializable(createToJson: false)
class Product extends Equatable {
  final String code,
      name,
      productTypeId,
      categoryId,
      unitId,
      id,
      createDate,
      updateDate;
  final String? image, defaultWarehouseId, bookId, storeId;
  final bool onlineSale, isActive;
  final int reorderPoint;

  factory Product.fromJson(Map<String, dynamic> data) =>
      _$ProductFromJson(data);

  const Product(
      this.code,
      this.name,
      this.productTypeId,
      this.categoryId,
      this.unitId,
      this.storeId,
      this.id,
      this.createDate,
      this.updateDate,
      this.image,
      this.defaultWarehouseId,
      this.bookId,
      this.onlineSale,
      this.isActive,
      this.reorderPoint);

  @override
  List<Object?> get props => [
        name,
        id,
        isActive,
        code,
        categoryId,
        productTypeId,
        createDate,
        storeId,
        updateDate,
        reorderPoint,
        unitId,
        image
      ];
}
