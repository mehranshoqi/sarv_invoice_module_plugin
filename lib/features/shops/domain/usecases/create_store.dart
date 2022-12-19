import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_store/param/create_store_param.dart';
import '../entities/create_store/response/create_store_response.dart';
import '../respository/repository.dart';

@lazySingleton
class CreateStores
    extends UseCases<BaseResponse<CreateStoreResponse>, CreateStoreParams> {
  final ShopsRepository repository;

  CreateStores(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateStoreResponse>>> call(
          CreateStoreParams params) async =>
      await repository.createStore(params);
}
