import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_customer/params/params.dart';
import '../../domain/entities/create_customer/response/response.dart';
import '../../domain/entities/get_customers/response/response.dart';

abstract class CustomerDataSource {
  Future<BaseResponse<CreateCustomerResponse>> createCustomer(
      CreateCustomerParams params);

  Future<BaseResponse<GetCustomersResponse>> getCustomers(NoParams params);
}
