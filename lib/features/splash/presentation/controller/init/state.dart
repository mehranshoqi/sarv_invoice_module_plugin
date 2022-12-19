import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/init/response/init_response.dart';

part 'state.freezed.dart';

@freezed
class GetInitState with _$GetInitState {
  const factory GetInitState.initial() = _GetInitInital;
  const factory GetInitState.loading() = GetInitStateLoading;
  const factory GetInitState.done(BaseResponse<InitResponse> response) =
      _GetInitStateLoaded;
  const factory GetInitState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
