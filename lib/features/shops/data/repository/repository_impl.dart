import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/error_translator.dart';
import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_store/param/create_store_param.dart';
import '../../domain/entities/create_store/response/create_store_response.dart';
import '../../domain/entities/get_stores/response/response.dart';
import '../../domain/respository/repository.dart';
import '../datasource/shops_datasource.dart';

@LazySingleton(as: ShopsRepository)
class ShopsRepositoryIMPL implements ShopsRepository {
  final ShopsDatasource datasource;

  ShopsRepositoryIMPL(this.datasource);

  @override
  Future<Either<Failure, BaseResponse<CreateStoreResponse>>> createStore(
      CreateStoreParams params) async {
    try {
      final BaseResponse<CreateStoreResponse> response =
          await datasource.createStore(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetStoresResponse>>> getStores(
      NoParams params) async {
    try {
      final BaseResponse<GetStoresResponse> response =
          await datasource.getStores(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }
}
