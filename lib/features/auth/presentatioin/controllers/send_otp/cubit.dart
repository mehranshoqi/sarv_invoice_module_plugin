import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/send_otp/params/send_otp_params.dart';
import '../../../domain/usecase/send_otp.dart';
import 'state.dart';

@injectable
class SendOtpCubit extends BaseCubit<SendOtpState> {
  SendOtpCubit({
    required this.sendOtp,
  }) : super(const SendOtpState.initial());

  final SendOtp sendOtp;

  Future<void> sendOtpF(SendOtpParams params) async {
    emit(const SendOtpState.loading());

    final result = await sendOtp(params);

    result.fold(
      (failure) => emit(SendOtpState.error(failure)),
      (response) => emit(SendOtpState.done(response)),
    );
  }
}
