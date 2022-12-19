import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_discount/params/params.dart';
import '../entities/create_discount/response/response.dart';
import '../repository/respository.dart';

@lazySingleton
class CreateDiscount extends UseCases<
    BaseResponse<CreateDiscountResponse>, CreateDiscountParams> {
  final ClubRepository repository;

  CreateDiscount(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateDiscountResponse>>> call(
          CreateDiscountParams params) async =>
      await repository.createDiscountPlan(params);
}
