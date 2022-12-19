import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_customer/params/params.dart';
import '../entities/create_customer/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateCustomer extends UseCases<BaseResponse<CreateCustomerResponse>,
    CreateCustomerParams> {
  final CustomerRepository repository;

  CreateCustomer(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateCustomerResponse>>> call(
          CreateCustomerParams params) async =>
      await repository.createCustomer(params);
}
