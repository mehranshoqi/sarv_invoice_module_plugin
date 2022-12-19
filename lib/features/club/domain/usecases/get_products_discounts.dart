import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_product_discounts/params/params.dart';
import '../entities/get_product_discounts/response/response.dart';
import '../repository/respository.dart';

@lazySingleton
class GetProductDiscounts extends UseCases<
    BaseResponse<GetProductDiscoutsResponse>, GetProductDiscountParams> {
  final ClubRepository repository;

  GetProductDiscounts(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetProductDiscoutsResponse>>> call(
          GetProductDiscountParams params) async =>
      await repository.getProductDiscounts(params);
}
