import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_products_album/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateProductsAlbumState with _$CreateProductsAlbumState {
  const factory CreateProductsAlbumState.initial() = _SendNameInital;
  const factory CreateProductsAlbumState.loading() =
      CreateProductsAlbumStateLoading;
  const factory CreateProductsAlbumState.done(
          BaseResponse<CreateProductsAlbumReponse> response) =
      _CreateProductsAlbumStateLoaded;
  const factory CreateProductsAlbumState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
