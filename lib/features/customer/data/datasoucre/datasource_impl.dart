import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_customer/params/params.dart';
import '../../domain/entities/create_customer/response/response.dart';
import '../../domain/entities/get_customers/response/response.dart';
import 'datasource.dart';

@LazySingleton(as: CustomerDataSource)
class CustomerDataSourceIMPL implements CustomerDataSource {
  final Dio dio;

  CustomerDataSourceIMPL(this.dio);

  @override
  Future<BaseResponse<CreateCustomerResponse>> createCustomer(
      CreateCustomerParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/customers',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateCustomerResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetCustomersResponse>> getCustomers(
      NoParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.get('/customers');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetCustomersResponse.fromJson(res),
    );
  }
}
