import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/error_translator.dart';
import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../domain/entities/init/response/init_response.dart';
import '../../domain/repository/init_repository.dart';
import '../datasource/init_datasource.dart';

@LazySingleton(as: InitRepository)
class InitRepositoryIMPL implements InitRepository {
  final InitDatasource datasource;

  InitRepositoryIMPL(this.datasource);

  @override
  Future<Either<Failure, BaseResponse<InitResponse>>> getInit() async {
    try {
      final BaseResponse<InitResponse> response = await datasource.getInit();
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }
}
