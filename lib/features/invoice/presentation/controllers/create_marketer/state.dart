import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_marketer/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateMarketerState with _$CreateMarketerState {
  const factory CreateMarketerState.initial() = _CreateMarketerInital;
  const factory CreateMarketerState.loading() = CreateMarketerStateLoading;
  const factory CreateMarketerState.done(
          BaseResponse<CreateMarketerResponse> response) =
      _CreateMarketerStateLoaded;
  const factory CreateMarketerState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
