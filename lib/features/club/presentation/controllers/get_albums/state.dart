import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_albums/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetAlbumsState with _$GetAlbumsState {
  const factory GetAlbumsState.initial() = _SendNameInital;
  const factory GetAlbumsState.loading() = GetAlbumsStateLoading;
  const factory GetAlbumsState.done(BaseResponse<GetAlbumsResponse> response) =
      _GetAlbumsStateLoaded;
  const factory GetAlbumsState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
