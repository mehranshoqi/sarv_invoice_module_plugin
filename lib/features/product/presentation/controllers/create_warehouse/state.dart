import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_warehouse/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateWarehouseState with _$CreateWarehouseState {
  const factory CreateWarehouseState.initial() = _CreateProductInital;
  const factory CreateWarehouseState.loading() = CreateWarehouseStateLoading;
  const factory CreateWarehouseState.done(
          BaseResponse<CreateWarehouseResponse> response) =
      _CreateWarehouseStateLoaded;
  const factory CreateWarehouseState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
