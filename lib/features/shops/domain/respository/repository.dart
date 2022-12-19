import '../../../../core/entities/no_params.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_stores/response/response.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../entities/create_store/param/create_store_param.dart';
import '../entities/create_store/response/create_store_response.dart';

abstract class ShopsRepository {
  Future<Either<Failure, BaseResponse<CreateStoreResponse>>> createStore(
      CreateStoreParams params);
  Future<Either<Failure, BaseResponse<GetStoresResponse>>> getStores(
      NoParams params);
}
