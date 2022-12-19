import '../../../domain/entities/create_discount/response/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_products_album/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateDiscountState with _$CreateDiscountState {
  const factory CreateDiscountState.initial() = _SendNameInital;
  const factory CreateDiscountState.loading() = CreateDiscountStateLoading;
  const factory CreateDiscountState.done(
          BaseResponse<CreateDiscountResponse> response) =
      _CreateDiscountStateLoaded;
  const factory CreateDiscountState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
