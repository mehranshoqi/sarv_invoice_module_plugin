import '../../domain/entities/get_product_discounts/response/response.dart';
import '../../domain/entities/get_product_discounts/params/params.dart';
import '../../domain/entities/get_invoice_discount/response/response.dart';
import '../../domain/entities/get_invoice_discount/params/params.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/error_translator.dart';
import '../../../../core/dio/error/failure.dart';
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
import '../../domain/repository/respository.dart';
import '../datasource/datasource.dart';

@LazySingleton(as: ClubRepository)
class ClubRepositoryIMPL implements ClubRepository {
  final ClubDataSource dataSource;

  ClubRepositoryIMPL(this.dataSource);

  @override
  Future<Either<Failure, BaseResponse<CreateCustomersGroupResponse>>>
      createCustomerGroup(CreateCustomersGroupParams params) async {
    try {
      final BaseResponse<CreateCustomersGroupResponse> response =
          await dataSource.createCustomersGroup(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetCustomersGroupsResponse>>>
      getCustomerGroup(NoParams params) async {
    try {
      final BaseResponse<GetCustomersGroupsResponse> response =
          await dataSource.getCustomersGroups(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateProductsAlbumReponse>>>
      createProductsAlbum(CreateProductsAlbumParams params) async {
    try {
      final BaseResponse<CreateProductsAlbumReponse> response =
          await dataSource.createProductsAlbum(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetAlbumsResponse>>> getAlbums(
      NoParams params) async {
    try {
      final BaseResponse<GetAlbumsResponse> response =
          await dataSource.getAlbums(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<CreateDiscountResponse>>>
      createDiscountPlan(CreateDiscountParams params) async {
    try {
      final BaseResponse<CreateDiscountResponse> response =
          await dataSource.createDiscount(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetInvoiceDiscoutsResponse>>>
      getInvoiceDiscounts(GetInvoiceDiscountParams params) async {
    try {
      final BaseResponse<GetInvoiceDiscoutsResponse> response =
          await dataSource.getInvoiceDiscounts(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<GetProductDiscoutsResponse>>>
      getProductDiscounts(GetProductDiscountParams params) async {
    try {
      final BaseResponse<GetProductDiscoutsResponse> response =
          await dataSource.getProductDiscounts(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }
}
