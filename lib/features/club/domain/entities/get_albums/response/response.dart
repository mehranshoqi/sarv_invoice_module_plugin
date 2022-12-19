import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_products_album/response/products_album/products_album.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class GetAlbumsResponse extends Equatable {
  final List<ProductsAlbum> albums;

  factory GetAlbumsResponse.fromJson(Map<String, dynamic> data) =>
      _$GetAlbumsResponseFromJson(data);

  GetAlbumsResponse(this.albums);

  @override
  List<Object?> get props => [];
}
