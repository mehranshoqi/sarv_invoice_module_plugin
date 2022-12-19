import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../product/domain/entities/create_product_category/response/response.dart';
import '../entities/create_buy_invoice/params/params.dart';
import '../entities/create_buy_invoice/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateBuyInvoice extends UseCases<
    BaseResponse<CreateBuyInvoiceResponse>, CreateBuyInvoiceParams> {
  final InvoiceRepository repository;

  CreateBuyInvoice(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateBuyInvoiceResponse>>> call(
          CreateBuyInvoiceParams params) async =>
      await repository.createBuyInvoice(params);
}
