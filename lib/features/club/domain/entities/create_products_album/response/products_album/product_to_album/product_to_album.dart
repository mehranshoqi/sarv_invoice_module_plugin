import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_to_album.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class ProductToAlbum extends Equatable {
  final String productId, albumId, storeId;

  factory ProductToAlbum.fromJson(Map<String, dynamic> data) =>
      _$ProductToAlbumFromJson(data);

  ProductToAlbum(this.productId, this.albumId, this.storeId);

  @override
  List<Object?> get props => [];
}
