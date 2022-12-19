import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_customers_group/params/params.dart';
import '../../domain/entities/create_customers_group/response/response.dart';
import '../../domain/entities/create_discount/params/params.dart';
import '../../domain/entities/create_discount/response/response.dart';
import '../../domain/entities/create_products_album/params/params.dart';
import '../../domain/entities/create_products_album/response/response.dart';
import '../../domain/entities/get_albums/response/response.dart';
import '../../domain/entities/get_customers_groups/response/response.dart';
import '../../domain/entities/get_invoice_discount/params/params.dart';
import '../../domain/entities/get_invoice_discount/response/response.dart';
import '../../domain/entities/get_product_discounts/params/params.dart';
import '../../domain/entities/get_product_discounts/response/plan/product_discount.dart';
import '../../domain/entities/get_product_discounts/response/response.dart';
import 'datasource.dart';

@LazySingleton(as: ClubDataSource)
class ClubDataSourceIMPL implements ClubDataSource {
  final Dio dio;

  ClubDataSourceIMPL(this.dio);

  @override
  Future<BaseResponse<CreateCustomersGroupResponse>> createCustomersGroup(
      CreateCustomersGroupParams params) async {
    final Response response = await dio.post(
      '/customer-groups',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateCustomersGroupResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetCustomersGroupsResponse>> getCustomersGroups(
      NoParams params) async {
    final Response response = await dio.get('/customer-groups');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetCustomersGroupsResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateProductsAlbumReponse>> createProductsAlbum(
      CreateProductsAlbumParams params) async {
    final Response response = await dio.post(
      '/product-albums',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateProductsAlbumReponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetAlbumsResponse>> getAlbums(NoParams params) async {
    final Response response = await dio.get('/product-albums');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetAlbumsResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateDiscountResponse>> createDiscount(
      CreateDiscountParams params) async {
    final Response response = await dio.post(
      '/discounts/plans',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateDiscountResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetInvoiceDiscoutsResponse>> getInvoiceDiscounts(
      GetInvoiceDiscountParams params) async {
    final Response response = await dio.get(
      '/discounts/plans/invoice/' + params.customerId.toString(),
      // queryParameters: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => GetInvoiceDiscoutsResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetProductDiscoutsResponse>> getProductDiscounts(
      GetProductDiscountParams params) async {
    final Response response = await dio.get(
      '/discounts/plans/product/' + params.customerId + '/' + params.productId,
      // queryParameters: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) {
        final response = GetProductDiscoutsResponse.fromJson(res);
        response.productId = params.productId;
        for (ProductDiscount productDiscount in response.plans)
          productDiscount.productId = params.productId;
        return response;
      },
    );
  }
}
