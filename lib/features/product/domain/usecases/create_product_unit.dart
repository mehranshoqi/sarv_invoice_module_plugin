import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_unit/params/params.dart';
import '../entities/create_unit/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateProductUnit
    extends UseCases<BaseResponse<CreateUnitResponse>, CreateUnitParams> {
  final ProductRepository repository;

  CreateProductUnit(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateUnitResponse>>> call(
          CreateUnitParams params) async =>
      repository.createUnit(params);
}
