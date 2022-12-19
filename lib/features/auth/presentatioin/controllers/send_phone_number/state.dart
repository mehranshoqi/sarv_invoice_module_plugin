import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/send_phone/response/send_phone.dart';

part 'state.freezed.dart';

@freezed
class SendPhoneNumberState with _$SendPhoneNumberState {
  const factory SendPhoneNumberState.initial() = _SendPhoneNumberInital;
  const factory SendPhoneNumberState.loading() = SendPhoneNumberStateLoading;
  const factory SendPhoneNumberState.done(
      BaseResponse<SendPhoneResponse> response) = _SendPhoneNumberStateLoaded;
  const factory SendPhoneNumberState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
