import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_warehouse/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class GetWarehouses
    extends UseCases<BaseResponse<GetWarehousesResponse>, NoParams> {
  final ProductRepository repository;

  GetWarehouses(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetWarehousesResponse>>> call(
          NoParams params) async =>
      repository.getWarehouses(params);
}
