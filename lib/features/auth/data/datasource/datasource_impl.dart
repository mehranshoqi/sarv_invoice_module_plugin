import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/response/base_response/base_response.dart';
import '../../domain/entities/send_name/param/send_name_param.dart';
import '../../domain/entities/send_name/response/send_name_response.dart';
import '../../domain/entities/send_otp/params/send_otp_params.dart';
import '../../domain/entities/send_otp/response/send_otp_response.dart';
import '../../domain/entities/send_phone/param/send_phone_number.dart';
import '../../domain/entities/send_phone/response/send_phone.dart';
import 'datasource.dart';

@LazySingleton(as: AuthDatasource)
class AuthDatasourceIMPL implements AuthDatasource {
  final Dio dio;

  AuthDatasourceIMPL(this.dio);

  @override
  Future<BaseResponse<SendPhoneResponse>> sendPhone(
      SendPhoneNumberParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/auth/login',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => SendPhoneResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<SendOtpResponse>> sendOtp(SendOtpParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.post(
      '/auth/otp',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => SendOtpResponse.fromJson(res),
    );
  }

  @override
  Future<BaseResponse<SendNameResponse>> sendName(SendNameParams params) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.patch(
      '/users',
      data: params.toJson(),
    );
    return BaseResponse.fromJson(
      response.data,
      (res) => SendNameResponse.fromJson(res),
    );
  }
}
