import '../../../../core/entities/response/base_response/base_response.dart';
import '../../domain/entities/init/response/init_response.dart';

abstract class InitDatasource {
  Future<BaseResponse<InitResponse>> getInit();
}
