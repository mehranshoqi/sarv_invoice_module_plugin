import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_product_types/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class GetProductTypes
    extends UseCases<BaseResponse<GetProductTypesResponse>, NoParams> {
  final ProductRepository repository;

  GetProductTypes(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetProductTypesResponse>>> call(
          NoParams params) async =>
      repository.getProductTypes(params);
}
