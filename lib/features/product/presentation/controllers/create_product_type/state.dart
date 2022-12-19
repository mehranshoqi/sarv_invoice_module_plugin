import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_product_type/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateProductTypeState with _$CreateProductTypeState {
  const factory CreateProductTypeState.initial() = _CreateProductTypeInital;
  const factory CreateProductTypeState.loading() =
      CreateProductTypeStateLoading;
  const factory CreateProductTypeState.done(
          BaseResponse<CreateProductTypeResponse> response) =
      _CreateProductTypeStateLoaded;
  const factory CreateProductTypeState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
