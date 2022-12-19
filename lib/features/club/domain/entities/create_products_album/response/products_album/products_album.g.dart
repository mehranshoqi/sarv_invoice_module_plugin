// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsAlbum _$ProductsAlbumFromJson(Map<String, dynamic> json) =>
    ProductsAlbum(
      json['name'] as String,
      json['id'] as String,
      (json['productToAlbums'] as List<dynamic>?)
          ?.map((e) => ProductToAlbum.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['productsCount'] as int?,
    );
