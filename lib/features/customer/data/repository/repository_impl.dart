import '../datasoucre/datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/error_translator.dart';
import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_customer/params/params.dart';
import '../../domain/entities/create_customer/response/response.dart';
import '../../domain/entities/get_customers/response/response.dart';
import '../../domain/repository/repository.dart';

@LazySingleton(as: CustomerRepository)
class CustomerRepositoryIMPL implements CustomerRepository {
  final CustomerDataSource dataSource;

  CustomerRepositoryIMPL(this.dataSource);

  @override
  Future<Either<Failure, BaseResponse<CreateCustomerResponse>>> createCustomer(
      CreateCustomerParams params) async {
    try {
      final BaseResponse<CreateCustomerResponse> response =
          await dataSource.createCustomer(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetCustomersResponse>>> getCustomers(
      NoParams params) async {
    try {
      final BaseResponse<GetCustomersResponse> response =
          await dataSource.getCustomers(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }
}
