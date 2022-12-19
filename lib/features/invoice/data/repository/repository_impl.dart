import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/error_translator.dart';
import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../product/domain/entities/create_product_category/response/response.dart';
import '../../domain/entities/create_buy_invoice/params/params.dart';
import '../../domain/entities/create_buy_invoice/response/response.dart';
import '../../domain/entities/create_marketer/params/params.dart';
import '../../domain/entities/create_marketer/response/response.dart';
import '../../domain/entities/create_sell_invoice/params/params.dart';
import '../../domain/entities/create_sell_invoice/response/response.dart';
import '../../domain/entities/get_marketers/response/response.dart';
import '../../domain/repository/repository.dart';
import '../datasouce/datasource.dart';

@LazySingleton(as: InvoiceRepository)
class InvoiceRepositoryIMPL implements InvoiceRepository {
  final InvoiceDataSource dataSource;

  InvoiceRepositoryIMPL(this.dataSource);

  @override
  Future<Either<Failure, BaseResponse<CreateBuyInvoiceResponse>>>
      createBuyInvoice(CreateBuyInvoiceParams params) async {
    try {
      final BaseResponse<CreateBuyInvoiceResponse> response =
          await dataSource.createBuyInvoice(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateSellInvoiceResponse>>>
      createSellInvoice(CreateSellInvoiceParams params) async {
    try {
      final BaseResponse<CreateSellInvoiceResponse> response =
          await dataSource.createSellInvoice(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateMarketerResponse>>> createMarketer(
      CreateMarketerParams params) async {
    try {
      final BaseResponse<CreateMarketerResponse> response =
          await dataSource.createMarketer(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetMarketersResponse>>> getMarketers(
      NoParams params) async {
    try {
      final BaseResponse<GetMarketersResponse> response =
          await dataSource.getMarketers(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }
}
