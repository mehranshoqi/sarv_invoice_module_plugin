// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAlbumsResponse _$GetAlbumsResponseFromJson(Map<String, dynamic> json) =>
    GetAlbumsResponse(
      (json['albums'] as List<dynamic>)
          .map((e) => ProductsAlbum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
