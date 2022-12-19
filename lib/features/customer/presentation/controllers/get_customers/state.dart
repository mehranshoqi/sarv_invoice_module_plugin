import '../../../domain/entities/create_customer/response/response.dart';
import '../../../domain/entities/get_customers/response/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';

part 'state.freezed.dart';

@freezed
class GetCustomersState with _$GetCustomersState {
  const factory GetCustomersState.initial() = _SendNameInital;
  const factory GetCustomersState.loading() = GetCustomersStateLoading;
  const factory GetCustomersState.done(
      BaseResponse<GetCustomersResponse> response) = _GetCustomersStateLoaded;
  const factory GetCustomersState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
