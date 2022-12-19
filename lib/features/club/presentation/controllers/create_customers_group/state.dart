import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_customers_group/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateCustomersGroupState with _$CreateCustomersGroupState {
  const factory CreateCustomersGroupState.initial() = _SendNameInital;
  const factory CreateCustomersGroupState.loading() =
      CreateCustomersGroupStateLoading;
  const factory CreateCustomersGroupState.done(
          BaseResponse<CreateCustomersGroupResponse> response) =
      _CreateCustomersGroupStateLoaded;
  const factory CreateCustomersGroupState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
