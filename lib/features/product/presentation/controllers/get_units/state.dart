import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_units/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetUnitsState with _$GetUnitsState {
  const factory GetUnitsState.initial() = _CreateProductInital;
  const factory GetUnitsState.loading() = GetUnitsStateLoading;
  const factory GetUnitsState.done(
      BaseResponse<GetProductUnitsResponse> response) = _GetUnitsStateLoaded;
  const factory GetUnitsState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
