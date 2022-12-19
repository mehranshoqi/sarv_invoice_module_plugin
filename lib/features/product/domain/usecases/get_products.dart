import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_products/params/params.dart';
import '../entities/get_products/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class GetProducts
    extends UseCases<BaseResponse<GetProductsResponse>, GetProductsParams> {
  final ProductRepository repository;

  GetProducts(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetProductsResponse>>> call(
          GetProductsParams params) async =>
      repository.getProducts(params);
}
