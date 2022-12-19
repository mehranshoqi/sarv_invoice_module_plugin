import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_warehouse/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetWarehousesState with _$GetWarehousesState {
  const factory GetWarehousesState.initial() = _CreateProductInital;
  const factory GetWarehousesState.loading() = GetWarehousesStateLoading;
  const factory GetWarehousesState.done(
      BaseResponse<GetWarehousesResponse> response) = _GetWarehousesStateLoaded;
  const factory GetWarehousesState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
