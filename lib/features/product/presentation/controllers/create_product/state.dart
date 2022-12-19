import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_product/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateProductState with _$CreateProductState {
  const factory CreateProductState.initial() = _CreateProductInital;
  const factory CreateProductState.loading() = CreateProductStateLoading;
  const factory CreateProductState.done(
      BaseResponse<CreateProductResponse> response) = _CreateProductStateLoaded;
  const factory CreateProductState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
