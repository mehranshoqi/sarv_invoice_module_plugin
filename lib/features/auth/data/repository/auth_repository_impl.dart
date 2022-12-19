import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/error_translator.dart';
import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../domain/entities/send_name/param/send_name_param.dart';
import '../../domain/entities/send_name/response/send_name_response.dart';
import '../../domain/entities/send_otp/params/send_otp_params.dart';
import '../../domain/entities/send_otp/response/send_otp_response.dart';
import '../../domain/entities/send_phone/param/send_phone_number.dart';
import '../../domain/entities/send_phone/response/send_phone.dart';
import '../../domain/repository/auth_repository.dart';
import '../datasource/datasource.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryIMPL implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryIMPL(this.datasource);

  @override
  Future<Either<Failure, BaseResponse<SendPhoneResponse>>> sendPhone(
      SendPhoneNumberParams params) async {
    try {
      final BaseResponse<SendPhoneResponse> response =
          await datasource.sendPhone(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<SendOtpResponse>>> sendOtp(
      SendOtpParams params) async {
    try {
      final BaseResponse<SendOtpResponse> response =
          await datasource.sendOtp(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<SendNameResponse>>> sendName(
      SendNameParams params) async {
    try {
      final BaseResponse<SendNameResponse> response =
          await datasource.sendName(params);
      return Right(response);
    } catch (err) {
      return Left(Failure(DioExceptions.fromDioError(err as DioError)));
    }
  }
}
