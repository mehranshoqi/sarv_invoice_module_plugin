import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/send_otp/response/send_otp_response.dart';

part 'state.freezed.dart';

@freezed
class SendOtpState with _$SendOtpState {
  const factory SendOtpState.initial() = _SendOtpInital;
  const factory SendOtpState.loading() = SendOtpStateLoading;
  const factory SendOtpState.done(BaseResponse<SendOtpResponse> response) =
      _SendOtpStateLoaded;
  const factory SendOtpState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
