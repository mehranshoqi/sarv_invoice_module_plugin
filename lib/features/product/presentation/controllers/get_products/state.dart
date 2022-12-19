import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_products/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetProductsState with _$GetProductsState {
  const factory GetProductsState.initial() = _CreateProductInital;
  const factory GetProductsState.loading() = GetProductsStateLoading;
  const factory GetProductsState.done(
      BaseResponse<GetProductsResponse> response) = _GetProductsStateLoaded;
  const factory GetProductsState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
