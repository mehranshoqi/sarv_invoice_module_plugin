import '../../../../core/entities/response/base_response/base_response.dart';
import '../../domain/entities/send_name/param/send_name_param.dart';
import '../../domain/entities/send_name/response/send_name_response.dart';
import '../../domain/entities/send_otp/params/send_otp_params.dart';
import '../../domain/entities/send_otp/response/send_otp_response.dart';
import '../../domain/entities/send_phone/param/send_phone_number.dart';
import '../../domain/entities/send_phone/response/send_phone.dart';

abstract class AuthDatasource {
  Future<BaseResponse<SendPhoneResponse>> sendPhone(
      SendPhoneNumberParams params);
  Future<BaseResponse<SendOtpResponse>> sendOtp(SendOtpParams params);
  Future<BaseResponse<SendNameResponse>> sendName(SendNameParams params);
}
