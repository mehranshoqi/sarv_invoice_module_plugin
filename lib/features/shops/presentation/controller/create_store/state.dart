import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_store/response/create_store_response.dart';

part 'state.freezed.dart';

@freezed
class CreateStoreState with _$CreateStoreState {
  const factory CreateStoreState.initial() = _CreateStoreInital;
  const factory CreateStoreState.loading() = CreateStoreStateLoading;
  const factory CreateStoreState.done(BaseResponse<CreateStoreResponse> response) =
      _CreateStoreStateLoaded;
  const factory CreateStoreState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
