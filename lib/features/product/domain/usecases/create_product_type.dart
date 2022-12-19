import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_product_type/params/params.dart';
import '../entities/create_product_type/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateProductType extends UseCases<
    BaseResponse<CreateProductTypeResponse>, CreateProductTypeParams> {
  final ProductRepository repository;

  CreateProductType(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateProductTypeResponse>>> call(
          CreateProductTypeParams params) async =>
      repository.createProductType(params);
}
