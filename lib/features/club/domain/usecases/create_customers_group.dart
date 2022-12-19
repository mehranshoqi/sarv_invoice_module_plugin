import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_customers_group/params/params.dart';
import '../entities/create_customers_group/response/response.dart';
import '../repository/respository.dart';

@lazySingleton
class CreateCustomersGroup extends UseCases<
    BaseResponse<CreateCustomersGroupResponse>, CreateCustomersGroupParams> {
  final ClubRepository repository;

  CreateCustomersGroup(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateCustomersGroupResponse>>> call(
          CreateCustomersGroupParams params) async =>
      await repository.createCustomerGroup(params);
}
