import '../../domain/entities/create_stock/params/params.dart';
import '../../domain/entities/create_stock/response/response.dart';

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

abstract class ProductDatasource {
  Future<BaseResponse<CreateProductTypeResponse>> createProductType(
      CreateProductTypeParams params);
  Future<BaseResponse<GetProductTypesResponse>> getProductTypes(
      NoParams params);
  Future<BaseResponse<CreateProductResponse>> createProduct(
      CreateProductParams params);
  Future<BaseResponse<CreateProductCategoryResponse>> createProductCategory(
      CreateProductCategoryParams params);
  Future<BaseResponse<GetProductCategoriesResponse>> getProductCategories(
      GetProductCategoriesParams params);
  Future<BaseResponse<GetWarehousesResponse>> getWarehouses(NoParams params);
  Future<BaseResponse<GetProductUnitsResponse>> getProductsUnits(
      NoParams params);
  Future<BaseResponse<GetProductsResponse>> getProducts(
      GetProductsParams params);
  Future<BaseResponse<CreateWarehouseResponse>> createWarehouse(
      CreateWarehouseParams params);
  Future<BaseResponse<CreateUnitResponse>> createUnit(CreateUnitParams params);
  Future<BaseResponse<CreateStockResponse>> createStock(
      CreateStockParams params);
}
