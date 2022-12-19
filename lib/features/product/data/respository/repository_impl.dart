import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/error_translator.dart';
import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_product/params/params.dart';
import '../../domain/entities/create_product/response/response.dart';
import '../../domain/entities/create_product_category/params/params.dart';
import '../../domain/entities/create_product_category/response/response.dart';
import '../../domain/entities/create_product_type/params/params.dart';
import '../../domain/entities/create_product_type/response/response.dart';
import '../../domain/entities/create_stock/params/params.dart';
import '../../domain/entities/create_stock/response/response.dart';
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
import '../../domain/repository/repository.dart';
import '../datasource/datasource.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryIMPL implements ProductRepository {
  final ProductDatasource dataSource;

  ProductRepositoryIMPL(this.dataSource);

  @override
  Future<Either<Failure, BaseResponse<CreateProductTypeResponse>>>
      createProductType(CreateProductTypeParams params) async {
    try {
      final BaseResponse<CreateProductTypeResponse> response =
          await dataSource.createProductType(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetProductTypesResponse>>>
      getProductTypes(NoParams params) async {
    try {
      final BaseResponse<GetProductTypesResponse> response =
          await dataSource.getProductTypes(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateProductResponse>>> createProduct(
      CreateProductParams params) async {
    try {
      final BaseResponse<CreateProductResponse> response =
          await dataSource.createProduct(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateProductCategoryResponse>>>
      createProductCategory(CreateProductCategoryParams params) async {
    try {
      final BaseResponse<CreateProductCategoryResponse> response =
          await dataSource.createProductCategory(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetProductCategoriesResponse>>>
      getProductCategories(GetProductCategoriesParams params) async {
    try {
      final BaseResponse<GetProductCategoriesResponse> response =
          await dataSource.getProductCategories(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateUnitResponse>>> createUnit(
      CreateUnitParams params) async {
    try {
      final BaseResponse<CreateUnitResponse> response =
          await dataSource.createUnit(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateWarehouseResponse>>>
      createWarehouse(CreateWarehouseParams params) async {
    try {
      final BaseResponse<CreateWarehouseResponse> response =
          await dataSource.createWarehouse(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetProductsResponse>>> getProducts(
      GetProductsParams params) async {
    try {
      final BaseResponse<GetProductsResponse> response =
          await dataSource.getProducts(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetProductUnitsResponse>>>
      getProductsUnits(NoParams params) async {
    try {
      final BaseResponse<GetProductUnitsResponse> response =
          await dataSource.getProductsUnits(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetWarehousesResponse>>> getWarehouses(
      NoParams params) async {
    try {
      final BaseResponse<GetWarehousesResponse> response =
          await dataSource.getWarehouses(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateStockResponse>>> createStock(
      CreateStockParams params) async {
    try {
      final BaseResponse<CreateStockResponse> response =
          await dataSource.createStock(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }
}
