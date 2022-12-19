import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_products_album/params/params.dart';
import '../entities/create_products_album/response/response.dart';
import '../repository/respository.dart';

@lazySingleton
class CreateProductsAlbum extends UseCases<
    BaseResponse<CreateProductsAlbumReponse>, CreateProductsAlbumParams> {
  final ClubRepository repository;

  CreateProductsAlbum(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateProductsAlbumReponse>>> call(
          CreateProductsAlbumParams params) async =>
      await repository.createProductsAlbum(params);
}
