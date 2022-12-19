import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/init/response/init_response.dart';
import '../repository/init_repository.dart';

@lazySingleton
class GetInit extends UseCases<BaseResponse<InitResponse>, NoParams> {
  final InitRepository repository;

  GetInit(this.repository);

  @override
  Future<Either<Failure, BaseResponse<InitResponse>>> call(
          NoParams params) async =>
      repository.getInit();
}
