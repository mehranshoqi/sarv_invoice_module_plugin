import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_product_discounts/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetProductDiscountState with _$GetProductDiscountState {
  const factory GetProductDiscountState.initial() = _SendNameInital;
  const factory GetProductDiscountState.loading() =
      GetProductDiscountStateLoading;
  const factory GetProductDiscountState.done(
          BaseResponse<GetProductDiscoutsResponse> response) =
      _GetProductDiscountStateLoaded;
  const factory GetProductDiscountState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
