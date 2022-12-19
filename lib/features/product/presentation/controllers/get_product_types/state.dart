import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_product_types/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetProductTypesState with _$GetProductTypesState {
  const factory GetProductTypesState.initial() = _GetProductTypesInital;
  const factory GetProductTypesState.loading() =
      GetProductTypesStateLoading;
  const factory GetProductTypesState.done(
          BaseResponse<GetProductTypesResponse> response) =
      _GetProductTypesStateLoaded;
  const factory GetProductTypesState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
