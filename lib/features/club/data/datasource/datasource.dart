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
import '../../domain/entities/get_product_discounts/response/response.dart';

abstract class ClubDataSource {
  Future<BaseResponse<CreateCustomersGroupResponse>> createCustomersGroup(
      CreateCustomersGroupParams params);

  Future<BaseResponse<GetCustomersGroupsResponse>> getCustomersGroups(
      NoParams params);

  Future<BaseResponse<CreateProductsAlbumReponse>> createProductsAlbum(
      CreateProductsAlbumParams params);

  Future<BaseResponse<GetAlbumsResponse>> getAlbums(NoParams params);

  Future<BaseResponse<CreateDiscountResponse>> createDiscount(
      CreateDiscountParams params);

  Future<BaseResponse<GetInvoiceDiscoutsResponse>> getInvoiceDiscounts(
      GetInvoiceDiscountParams params);

  Future<BaseResponse<GetProductDiscoutsResponse>> getProductDiscounts(
      GetProductDiscountParams params);
}
