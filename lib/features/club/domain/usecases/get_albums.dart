import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_albums/response/response.dart';
import '../repository/respository.dart';

@lazySingleton
class GetAlbums extends UseCases<BaseResponse<GetAlbumsResponse>, NoParams> {
  final ClubRepository repository;

  GetAlbums(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetAlbumsResponse>>> call(
          NoParams params) async =>
      await repository.getAlbums(params);
}
