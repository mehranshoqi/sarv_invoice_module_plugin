import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


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
import 'datasource.dart';

@LazySingleton(as: InvoiceDataSource)
class InvoiceDataSourceIMPL implements InvoiceDataSource {
  final Dio dio;

  InvoiceDataSourceIMPL(this.dio);

  @override
  Future<BaseResponse<CreateBuyInvoiceResponse>> createBuyInvoice(
      CreateBuyInvoiceParams params) async {
    final Response response = await dio.post(
      '/invoices/buy',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateBuyInvoiceResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateSellInvoiceResponse>> createSellInvoice(
      CreateSellInvoiceParams params) async {
    print(params.toJson().toString());
    final Response response = await dio.post(
      '/invoices/sell',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateSellInvoiceResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateMarketerResponse>> createMarketer(
      CreateMarketerParams params) async {
    final Response response = await dio.post(
      '/marketers',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateMarketerResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetMarketersResponse>> getMarketers(
      NoParams params) async {
    final Response response = await dio.get('/marketers');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetMarketersResponse.fromJson(res),
    );
  }
}
