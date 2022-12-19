import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_stock/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateStockState with _$CreateStockState {
  const factory CreateStockState.initial() = _CreateStockInital;
  const factory CreateStockState.loading() = CreateStockStateLoading;
  const factory CreateStockState.done(
      BaseResponse<CreateStockResponse> response) = _CreateStockStateLoaded;
  const factory CreateStockState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
