import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_product_categories/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetProductCategoriesState with _$GetProductCategoriesState {
  const factory GetProductCategoriesState.initial() =
      _GetProductCategoriesInital;
  const factory GetProductCategoriesState.loading() =
      GetProductCategoriesStateLoading;
  const factory GetProductCategoriesState.done(
          BaseResponse<GetProductCategoriesResponse> response) =
      _GetProductCategoriesStateLoaded;
  const factory GetProductCategoriesState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
