import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_store/param/create_store_param.dart';
import '../../domain/entities/create_store/response/create_store_response.dart';
import '../../domain/entities/get_stores/response/response.dart';
import 'shops_datasource.dart';

@LazySingleton(as: ShopsDatasource)
class ShopsDatasourceIMPL implements ShopsDatasource {
  final Dio dio;

  ShopsDatasourceIMPL(this.dio);

  @override
  Future<BaseResponse<CreateStoreResponse>> createStore(
      CreateStoreParams params) async {
    final Response response = await dio.post(
      '/store',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => CreateStoreResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<GetStoresResponse>> getStores(NoParams params) async {
    final Response response = await dio.get('/store');
    return BaseResponse.fromJson(
      response.data,
      (res) => GetStoresResponse.fromJson(res),
    );
  }
}
