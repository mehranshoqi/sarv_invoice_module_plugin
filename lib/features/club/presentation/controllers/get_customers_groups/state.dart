import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_customers_groups/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetCustomersGroupsState with _$GetCustomersGroupsState {
  const factory GetCustomersGroupsState.initial() = _SendNameInital;
  const factory GetCustomersGroupsState.loading() =
      GetCustomersGroupsStateLoading;
  const factory GetCustomersGroupsState.done(
          BaseResponse<GetCustomersGroupsResponse> response) =
      _GetCustomersGroupsStateLoaded;
  const factory GetCustomersGroupsState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
