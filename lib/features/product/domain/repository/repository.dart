import '../entities/create_stock/response/response.dart';
import '../../../shops/domain/entities/create_store/param/create_store_param.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_product/params/params.dart';
import '../entities/create_product/response/response.dart';
import '../entities/create_product_category/params/params.dart';
import '../entities/create_product_category/response/response.dart';
import '../entities/create_product_type/params/params.dart';
import '../entities/create_product_type/response/response.dart';
import '../entities/create_stock/params/params.dart';
import '../entities/create_unit/params/params.dart';
import '../entities/create_unit/response/response.dart';
import '../entities/create_warehouse/params/params.dart';
import '../entities/create_warehouse/response/response.dart';
import '../entities/get_product_categories/params/params.dart';
import '../entities/get_product_categories/response/response.dart';
import '../entities/get_product_types/response/response.dart';
import '../entities/get_products/params/params.dart';
import '../entities/get_products/response/response.dart';
import '../entities/get_units/response/response.dart';
import '../entities/get_warehouse/response/response.dart';

abstract class ProductRepository {
  Future<Either<Failure, BaseResponse<CreateProductTypeResponse>>>
      createProductType(CreateProductTypeParams params);

  Future<Either<Failure, BaseResponse<GetProductTypesResponse>>>
      getProductTypes(NoParams params);

  Future<Either<Failure, BaseResponse<CreateProductResponse>>> createProduct(
      CreateProductParams params);

  Future<Either<Failure, BaseResponse<CreateProductCategoryResponse>>>
      createProductCategory(CreateProductCategoryParams params);

  Future<Either<Failure, BaseResponse<GetProductCategoriesResponse>>>
      getProductCategories(GetProductCategoriesParams params);

  Future<Either<Failure, BaseResponse<GetWarehousesResponse>>> getWarehouses(
      NoParams params);

  Future<Either<Failure, BaseResponse<GetProductUnitsResponse>>>
      getProductsUnits(NoParams params);

  Future<Either<Failure, BaseResponse<GetProductsResponse>>> getProducts(
      GetProductsParams params);

  Future<Either<Failure, BaseResponse<CreateWarehouseResponse>>>
      createWarehouse(CreateWarehouseParams params);

  Future<Either<Failure, BaseResponse<CreateUnitResponse>>> createUnit(
      CreateUnitParams params);

  Future<Either<Failure, BaseResponse<CreateStockResponse>>> createStock(
      CreateStockParams params);
}
