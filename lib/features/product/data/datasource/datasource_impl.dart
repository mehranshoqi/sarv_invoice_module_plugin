import '../../domain/entities/create_stock/params/params.dart';
import '../../domain/entities/create_stock/response/response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_product/params/params.dart';
import '../../domain/entities/create_product/response/response.dart';
import '../../domain/entities/create_product_category/params/params.dart';
import '../../domain/entities/create_product_category/response/response.dart';
import '../../domain/entities/create_product_type/params/params.dart';
import '../../domain/entities/create_product_type/response/response.dart';
import '../../domain/entities/create_unit/params/params.dart';
import '../../domain/entities/create_unit/response/response.dart';
import '../../domain/entities/create_warehouse/params/params.dart';
import '../../domain/entities/create_warehouse/response/response.dart';
import '../../domain/entities/get_product_categories/params/params.dart';
import '../../domain/entities/get_product_categories/response/response.dart';
import '../../domain/entities/get_product_types/response/response.dart';
import '../../domain/entities/get_products/params/params.dart';
import '../../domain/entities/get_products/response/response.dart';
import '../../domain/entities/get_units/response/response.dart';
import '../../domain/entities/get_warehouse/response/response.dart';
import 'datasource.dart';

@LazySingleton(as: ProductDatasource)
class ProductDataSourceIMPL implements ProductDatasource {
  final Dio dio;

  ProductDataSourceIMPL(this.dio);

  @override
  Future<BaseResponse<CreateProductTypeResponse>> createProductType(
      CreateProductTypeParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/product-types',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateProductTypeResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetProductTypesResponse>> getProductTypes(
      NoParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.get('/product-types');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetProductTypesResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateProductResponse>> createProduct(
      CreateProductParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/products',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateProductResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateProductCategoryResponse>> createProductCategory(
      CreateProductCategoryParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/product-categories',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateProductCategoryResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetProductCategoriesResponse>> getProductCategories(
      GetProductCategoriesParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response =
        await dio.get('/product-categories/${params.productTypeId}');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetProductCategoriesResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateUnitResponse>> createUnit(
      CreateUnitParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/product-units',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateUnitResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateWarehouseResponse>> createWarehouse(
      CreateWarehouseParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/warehouses',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateWarehouseResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetProductsResponse>> getProducts(
      GetProductsParams params) async {
    print('get products api');
    print(params.toJson().toString());
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.get(
      '/products',
      // ?search=${params.search}?productTypeId=${params.typeId}',
      queryParameters: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => GetProductsResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetProductUnitsResponse>> getProductsUnits(
      NoParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.get('/product-units');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetProductUnitsResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetWarehousesResponse>> getWarehouses(
      NoParams params) async {
    final Response response = await dio.get('/warehouses');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetWarehousesResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<CreateStockResponse>> createStock(
      CreateStockParams params) async {
    final Response response = await dio.post(
      '/warehouses/stock',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateStockResponse.fromJson(res),
    );
  }
}
