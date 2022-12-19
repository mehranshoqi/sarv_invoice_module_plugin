import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/send_otp/params/send_otp_params.dart';
import '../entities/send_otp/response/send_otp_response.dart';
import '../repository/auth_repository.dart';

@lazySingleton
class SendOtp extends UseCases<BaseResponse<SendOtpResponse>, SendOtpParams> {
  final AuthRepository repository;

  SendOtp(this.repository);

  @override
  Future<Either<Failure, BaseResponse<SendOtpResponse>>> call(
          SendOtpParams params) async =>
      await repository.sendOtp(params);
}
