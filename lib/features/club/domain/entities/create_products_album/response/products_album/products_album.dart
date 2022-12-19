import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_to_album/product_to_album.dart';

part 'products_album.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class ProductsAlbum extends Equatable {
  final String name, id;
  final List<ProductToAlbum>? productToAlbums;
  final int? productsCount;

  factory ProductsAlbum.fromJson(Map<String, dynamic> data) =>
      _$ProductsAlbumFromJson(data);

  ProductsAlbum(
    this.name,
    this.id,
    this.productToAlbums,
    this.productsCount,
  );

  @override
  List<Object?> get props => [name, id, productToAlbums];
}
