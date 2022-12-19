import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_customers_groups/response/response.dart';
import '../repository/respository.dart';

@lazySingleton
class GetCustomersGroups
    extends UseCases<BaseResponse<GetCustomersGroupsResponse>, NoParams> {
  final ClubRepository repository;

  GetCustomersGroups(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetCustomersGroupsResponse>>> call(
          NoParams params) async =>
      await repository.getCustomerGroup(params);
}
