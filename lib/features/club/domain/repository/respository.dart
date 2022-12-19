import 'package:dartz/dartz.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_customers_group/params/params.dart';
import '../entities/create_customers_group/response/response.dart';
import '../entities/create_discount/params/params.dart';
import '../entities/create_discount/response/response.dart';
import '../entities/create_products_album/params/params.dart';
import '../entities/create_products_album/response/response.dart';
import '../entities/get_albums/response/response.dart';
import '../entities/get_customers_groups/response/response.dart';
import '../entities/get_invoice_discount/params/params.dart';
import '../entities/get_invoice_discount/response/response.dart';
import '../entities/get_product_discounts/params/params.dart';
import '../entities/get_product_discounts/response/response.dart';

abstract class ClubRepository {
  Future<Either<Failure, BaseResponse<CreateCustomersGroupResponse>>>
      createCustomerGroup(CreateCustomersGroupParams params);

  Future<Either<Failure, BaseResponse<GetCustomersGroupsResponse>>>
      getCustomerGroup(NoParams params);

  Future<Either<Failure, BaseResponse<CreateProductsAlbumReponse>>>
      createProductsAlbum(CreateProductsAlbumParams params);

  Future<Either<Failure, BaseResponse<GetAlbumsResponse>>> getAlbums(
      NoParams params);

  Future<Either<Failure, BaseResponse<CreateDiscountResponse>>>
      createDiscountPlan(CreateDiscountParams params);

  Future<Either<Failure, BaseResponse<GetInvoiceDiscoutsResponse>>>
      getInvoiceDiscounts(GetInvoiceDiscountParams params);

  Future<Either<Failure, BaseResponse<GetProductDiscoutsResponse>>>
      getProductDiscounts(GetProductDiscountParams params);
}
