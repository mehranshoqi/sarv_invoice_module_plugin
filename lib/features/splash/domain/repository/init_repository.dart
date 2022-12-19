import 'package:dartz/dartz.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../entities/init/response/init_response.dart';

abstract class InitRepository {
  Future<Either<Failure, BaseResponse<InitResponse>>> getInit();
}
