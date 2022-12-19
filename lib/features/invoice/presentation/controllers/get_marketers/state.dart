import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_marketers/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetMarketersState with _$GetMarketersState {
  const factory GetMarketersState.initial() = _GetMarketersInital;
  const factory GetMarketersState.loading() = GetMarketersStateLoading;
  const factory GetMarketersState.done(
      BaseResponse<GetMarketersResponse> response) = _GetMarketersStateLoaded;
  const factory GetMarketersState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
