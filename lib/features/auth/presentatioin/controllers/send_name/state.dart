import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/send_name/response/send_name_response.dart';

part 'state.freezed.dart';

@freezed
class SendNameState with _$SendNameState {
  const factory SendNameState.initial() = _SendNameInital;
  const factory SendNameState.loading() = SendNameStateLoading;
  const factory SendNameState.done(BaseResponse<SendNameResponse> response) =
      _SendNameStateLoaded;
  const factory SendNameState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
