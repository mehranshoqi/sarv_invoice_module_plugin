import 'package:dartz/dartz.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../entities/send_name/param/send_name_param.dart';
import '../entities/send_name/response/send_name_response.dart';
import '../entities/send_otp/params/send_otp_params.dart';
import '../entities/send_otp/response/send_otp_response.dart';
import '../entities/send_phone/param/send_phone_number.dart';
import '../entities/send_phone/response/send_phone.dart';

abstract class AuthRepository {
  Future<Either<Failure, BaseResponse<SendPhoneResponse>>> sendPhone(
      SendPhoneNumberParams params);
  Future<Either<Failure, BaseResponse<SendOtpResponse>>> sendOtp(
      SendOtpParams params);
  Future<Either<Failure, BaseResponse<SendNameResponse>>> sendName(
      SendNameParams params);
}
