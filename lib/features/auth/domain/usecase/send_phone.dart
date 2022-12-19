import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/send_phone/param/send_phone_number.dart';
import '../entities/send_phone/response/send_phone.dart';
import '../repository/auth_repository.dart';

@lazySingleton
class SendPhoneNumber
    extends UseCases<BaseResponse<SendPhoneResponse>, SendPhoneNumberParams> {
  final AuthRepository repository;

  SendPhoneNumber(this.repository);

  @override
  Future<Either<Failure, BaseResponse<SendPhoneResponse>>> call(
          SendPhoneNumberParams params) async =>
      await repository.sendPhone(params);
}
