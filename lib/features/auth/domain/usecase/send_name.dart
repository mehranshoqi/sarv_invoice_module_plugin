import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/send_name/param/send_name_param.dart';
import '../entities/send_name/response/send_name_response.dart';
import '../repository/auth_repository.dart';

@lazySingleton
class SendName
    extends UseCases<BaseResponse<SendNameResponse>, SendNameParams> {
  final AuthRepository repository;

  SendName(this.repository);

  @override
  Future<Either<Failure, BaseResponse<SendNameResponse>>> call(
          SendNameParams params) async =>
      await repository.sendName(params);
}
