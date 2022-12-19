import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_warehouse/params/params.dart';
import '../entities/create_warehouse/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateWarehouse extends UseCases<
    BaseResponse<CreateWarehouseResponse>, CreateWarehouseParams> {
  final ProductRepository repository;

  CreateWarehouse(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateWarehouseResponse>>> call(
          CreateWarehouseParams params) async =>
      repository.createWarehouse(params);
}
