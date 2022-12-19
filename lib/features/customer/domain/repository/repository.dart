import 'package:dartz/dartz.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_customer/params/params.dart';
import '../entities/create_customer/response/response.dart';
import '../entities/get_customers/response/response.dart';

abstract class CustomerRepository {
  Future<Either<Failure,BaseResponse<CreateCustomerResponse>>> createCustomer(
      CreateCustomerParams params);

  Future<Either<Failure,BaseResponse<GetCustomersResponse>>> getCustomers(
      NoParams params);
}
