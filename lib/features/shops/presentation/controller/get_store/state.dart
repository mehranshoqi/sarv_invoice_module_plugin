import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_stores/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetStoresState with _$GetStoresState {
  const factory GetStoresState.initial() = _GetStoresInital;
  const factory GetStoresState.loading() = GetStoresStateLoading;
  const factory GetStoresState.done(BaseResponse<GetStoresResponse> response) =
      _GetStoresStateLoaded;
  const factory GetStoresState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
