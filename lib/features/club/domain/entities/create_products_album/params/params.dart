import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateProductsAlbumParams extends Equatable {
  String name;
  List<String> products;

  CreateProductsAlbumParams(this.name, this.products);

  Map<String, dynamic> toJson() => _$CreateProductsAlbumParamsToJson(this);

  @override
  List<Object?> get props => [];
}
