import 'package:dartz/dartz.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../product/domain/entities/create_product_category/response/response.dart';
import '../entities/create_buy_invoice/params/params.dart';
import '../entities/create_buy_invoice/response/response.dart';
import '../entities/create_marketer/params/params.dart';
import '../entities/create_marketer/response/response.dart';
import '../entities/create_sell_invoice/params/params.dart';
import '../entities/create_sell_invoice/response/response.dart';
import '../entities/get_marketers/response/response.dart';

abstract class InvoiceRepository {
  Future<Either<Failure, BaseResponse<CreateBuyInvoiceResponse>>>
      createBuyInvoice(CreateBuyInvoiceParams params);

  Future<Either<Failure, BaseResponse<CreateSellInvoiceResponse>>>
      createSellInvoice(CreateSellInvoiceParams params);

  Future<Either<Failure, BaseResponse<CreateMarketerResponse>>> createMarketer(
      CreateMarketerParams params);

  Future<Either<Failure, BaseResponse<GetMarketersResponse>>> getMarketers(
      NoParams params);
}
