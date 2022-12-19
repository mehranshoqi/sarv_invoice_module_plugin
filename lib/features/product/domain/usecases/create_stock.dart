import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_stock/params/params.dart';
import '../entities/create_stock/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateStock
    extends UseCases<BaseResponse<CreateStockResponse>, CreateStockParams> {
  final ProductRepository repository;

  CreateStock(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateStockResponse>>> call(
          CreateStockParams params) async =>
      repository.createStock(params);
}
