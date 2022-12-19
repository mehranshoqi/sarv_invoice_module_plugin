import '../../../domain/entities/create_customer/response/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../../club/domain/entities/create_customers_group/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateCustomerState with _$CreateCustomerState {
  const factory CreateCustomerState.initial() = _SendNameInital;
  const factory CreateCustomerState.loading() = CreateCustomerStateLoading;
  const factory CreateCustomerState.done(
          BaseResponse<CreateCustomerResponse> response) =
      _CreateCustomerStateLoaded;
  const factory CreateCustomerState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
