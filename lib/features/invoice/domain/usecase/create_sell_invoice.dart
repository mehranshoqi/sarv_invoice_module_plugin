import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_sell_invoice/params/params.dart';
import '../entities/create_sell_invoice/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateSellInvoice extends UseCases<
    BaseResponse<CreateSellInvoiceResponse>, CreateSellInvoiceParams> {
  final InvoiceRepository repository;

  CreateSellInvoice(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateSellInvoiceResponse>>> call(
          CreateSellInvoiceParams params) async =>
      await repository.createSellInvoice(params);
}
