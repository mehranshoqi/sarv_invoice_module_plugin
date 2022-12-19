import '../../domain/entities/create_buy_invoice/response/response.dart';

import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_marketer/params/params.dart';
import '../../domain/entities/create_marketer/response/response.dart';
import '../../domain/entities/create_sell_invoice/response/response.dart';
import '../../domain/entities/get_marketers/response/response.dart';

import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../product/domain/entities/create_product_category/response/response.dart';
import '../../domain/entities/create_buy_invoice/params/params.dart';
import '../../domain/entities/create_sell_invoice/params/params.dart';

abstract class InvoiceDataSource {
  // Todo - response.
  Future<BaseResponse<CreateBuyInvoiceResponse>> createBuyInvoice(
      CreateBuyInvoiceParams params);

  Future<BaseResponse<CreateSellInvoiceResponse>> createSellInvoice(
      CreateSellInvoiceParams params);

  Future<BaseResponse<CreateMarketerResponse>> createMarketer(
      CreateMarketerParams params);

  Future<BaseResponse<GetMarketersResponse>> getMarketers(NoParams params);
}
