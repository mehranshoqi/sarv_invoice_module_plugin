import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_buy_invoice/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateBuyInvoiceState with _$CreateBuyInvoiceState {
  const factory CreateBuyInvoiceState.initial() = _CreateBuyInvoiceInital;
  const factory CreateBuyInvoiceState.loading() = CreateBuyInvoiceStateLoading;
  const factory CreateBuyInvoiceState.done(
          BaseResponse<CreateBuyInvoiceResponse> response) =
      _CreateBuyInvoiceStateLoaded;
  const factory CreateBuyInvoiceState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
