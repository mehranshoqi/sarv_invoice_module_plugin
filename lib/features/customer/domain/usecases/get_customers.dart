import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_customers/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class GetCustomers
    extends UseCases<BaseResponse<GetCustomersResponse>, NoParams> {
  final CustomerRepository repository;

  GetCustomers(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetCustomersResponse>>> call(
          NoParams params) async =>
      await repository.getCustomers(params);
}
