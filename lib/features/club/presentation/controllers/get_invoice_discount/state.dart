import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/dio/error/failure.dart';
import '../../../../../core/entities/response/base_response/base_response.dart';
import '../../../domain/entities/get_invoice_discount/response/response.dart';

part 'state.freezed.dart';

@freezed
class GetInvoiceDiscountsState with _$GetInvoiceDiscountsState {
  const factory GetInvoiceDiscountsState.initial() = _SendNameInital;
  const factory GetInvoiceDiscountsState.loading() =
      GetInvoiceDiscountsStateLoading;
  const factory GetInvoiceDiscountsState.done(
          BaseResponse<GetInvoiceDiscoutsResponse> response) =
      _GetInvoiceDiscountsStateLoaded;
  const factory GetInvoiceDiscountsState.error(Failure failure) =
      _SendPhoneNumberStateError;
}
