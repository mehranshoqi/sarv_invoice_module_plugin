import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_units/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class GetUnits
    extends UseCases<BaseResponse<GetProductUnitsResponse>, NoParams> {
  final ProductRepository repository;

  GetUnits(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetProductUnitsResponse>>> call(
          NoParams params) async =>
      repository.getProductsUnits(params);
}
