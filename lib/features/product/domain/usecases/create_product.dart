import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_product/params/params.dart';
import '../entities/create_product/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateProduct
    extends UseCases<BaseResponse<CreateProductResponse>, CreateProductParams> {
  final ProductRepository repository;

  CreateProduct(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateProductResponse>>> call(
          CreateProductParams params) async =>
      repository.createProduct(params);
}
