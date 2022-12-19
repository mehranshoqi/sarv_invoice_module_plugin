import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'products_album/products_album.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class CreateProductsAlbumReponse extends Equatable {
  final ProductsAlbum data;

  factory CreateProductsAlbumReponse.fromJson(Map<String, dynamic> map) =>
      _$CreateProductsAlbumReponseFromJson(map);

  CreateProductsAlbumReponse(this.data);

  @override
  List<Object?> get props => [];
}
