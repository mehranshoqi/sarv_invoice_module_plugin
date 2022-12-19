import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_product_categories/params/params.dart';
import '../entities/get_product_categories/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class GetProductCategories extends UseCases<
    BaseResponse<GetProductCategoriesResponse>, GetProductCategoriesParams> {
  final ProductRepository repository;

  GetProductCategories(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetProductCategoriesResponse>>> call(
          GetProductCategoriesParams params) async =>
      repository.getProductCategories(params);
}
