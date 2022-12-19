import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_invoice_discount/params/params.dart';
import '../entities/get_invoice_discount/response/response.dart';
import '../repository/respository.dart';

@lazySingleton
class GetInvoiceDiscounts extends UseCases<
    BaseResponse<GetInvoiceDiscoutsResponse>, GetInvoiceDiscountParams> {
  final ClubRepository repository;

  GetInvoiceDiscounts(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetInvoiceDiscoutsResponse>>> call(
          GetInvoiceDiscountParams params) async =>
      await repository.getInvoiceDiscounts(params);
}
