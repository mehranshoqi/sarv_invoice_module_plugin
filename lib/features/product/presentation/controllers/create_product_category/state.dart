import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_product_category/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateProductCategoryState with _$CreateProductCategoryState {
  const factory CreateProductCategoryState.initial() =
      _CreateProductCategoryInital;
  const factory CreateProductCategoryState.loading() =
      CreateProductCategoryStateLoading;
  const factory CreateProductCategoryState.done(
          BaseResponse<CreateProductCategoryResponse> response) =
      _CreateProductCategoryStateLoaded;
  const factory CreateProductCategoryState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
