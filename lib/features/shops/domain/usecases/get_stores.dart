import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_stores/response/response.dart';
import '../respository/repository.dart';

@lazySingleton
class GetStores extends UseCases<BaseResponse<GetStoresResponse>, NoParams> {
  final ShopsRepository repository;

  GetStores(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetStoresResponse>>> call(
          NoParams params) async =>
      await repository.getStores(params);
}
