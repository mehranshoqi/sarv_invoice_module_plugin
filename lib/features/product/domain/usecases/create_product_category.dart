import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_product_category/params/params.dart';
import '../entities/create_product_category/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateProductCategory extends UseCases<
    BaseResponse<CreateProductCategoryResponse>, CreateProductCategoryParams> {
  final ProductRepository repository;

  CreateProductCategory(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateProductCategoryResponse>>> call(
          CreateProductCategoryParams params) async =>
      repository.createProductCategory(params);
}
