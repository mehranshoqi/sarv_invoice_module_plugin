import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/create_sell_invoice/response/response.dart';

part 'state.freezed.dart';

@freezed
class CreateSellInvoiceState with _$CreateSellInvoiceState {
  const factory CreateSellInvoiceState.initial() = _CreateSellInvoiceInital;
  const factory CreateSellInvoiceState.loading() =
      CreateSellInvoiceStateLoading;
  const factory CreateSellInvoiceState.done(
          BaseResponse<CreateSellInvoiceResponse> response) =
      _CreateSellInvoiceStateLoaded;
  const factory CreateSellInvoiceState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
