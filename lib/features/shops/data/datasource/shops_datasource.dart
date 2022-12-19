import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_store/param/create_store_param.dart';
import '../../domain/entities/create_store/response/create_store_response.dart';
import '../../domain/entities/get_stores/response/response.dart';

abstract class ShopsDatasource {
  Future<BaseResponse<CreateStoreResponse>> createStore(
      CreateStoreParams params);
  Future<BaseResponse<GetStoresResponse>> getStores(NoParams params);
}
