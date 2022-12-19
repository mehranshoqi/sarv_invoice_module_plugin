import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_unit/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateProductUnitState with _$CreateProductUnitState {
  const factory CreateProductUnitState.initial() = _CreateProductInital;
  const factory CreateProductUnitState.loading() =
      CreateProductUnitStateLoading;
  const factory CreateProductUnitState.done(
          BaseResponse<CreateUnitResponse> response) =
      _CreateProductUnitStateLoaded;
  const factory CreateProductUnitState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
