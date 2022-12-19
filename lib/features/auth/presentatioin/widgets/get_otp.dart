import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../../core/config/routing/routes.dart';
import '../../../../core/constants/pref_keys.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/services/user.dart';
import '../../../../core/ui/b_button.dart';
import '../../../../core/ui/b_input.dart';
import '../../../../core/ui/b_text_button.dart';
import '../../../../core/ui/b_toast.dart';
import '../../domain/entities/send_otp/params/send_otp_params.dart';
import '../../domain/entities/send_otp/response/send_otp_response.dart';
import '../controllers/send_otp/cubit.dart';
import '../controllers/send_otp/state.dart';

// ignore: must_be_immutable
class GetOTP extends StatefulWidget {
  GetOTP({
    Key? key,
    required this.nextPage,
    required this.prevPage,
    required this.retryTime,
    required this.phoneNumber,
  }) : super(key: key);
  Function() prevPage;
  Function(BaseResponse<SendOtpResponse> response) nextPage;
  final int retryTime;
  final String phoneNumber;

  @override
  State<GetOTP> createState() => _GetOTPState();
}

class _GetOTPState extends State<GetOTP> {
  final SendOtpParams _sendOtpParams = SendOtpParams('', '');
  late SendOtpCubit _sendOtpCubit;

  @override
  void initState() {
    _sendOtpCubit = sl<SendOtpCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(flex: 3),
          Text(
            'کد ارسال شده به ${widget.phoneNumber} را وارد کنید',
            style: S.t(context).bodyText1,
          ),
          const SizedBox(height: 28),
          BInput(
            width: 310,
            hint: '- - - - -',
            letterSpacing: 16,
            inputType: TextInputType.number,
            maxLength: 6,
            onChange: (t) => _sendOtpParams.code = t,
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BTextButton(label: 'اصلاح شماره', onTap: widget.prevPage),
              BTextButton(label: 'ارسال مجدد', onTap: () {}),
            ],
          ),
          const Spacer(flex: 2),
          BlocProvider(
            create: (context) => _sendOtpCubit,
            child: BlocConsumer<SendOtpCubit, SendOtpState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (failure) => BToast.error(failure.errorReason!.first),
                done: (res) => _otpResponseHandler(res),
              ),
              builder: (context, state) => BButton(
                label: 'تایید',
                onTap: _sendCode,
                loading: state is SendOtpStateLoading,
              ),
            ),
          ),
          const Spacer(),
        ],
      );

  void _sendCode() {
    _sendOtpParams.phoneNumber = widget.phoneNumber;
    _sendOtpCubit.sendOtpF(_sendOtpParams);
  }

  void _otpResponseHandler(BaseResponse<SendOtpResponse> res) {
    _getUserInfoIsRequired(res)
        ? widget.nextPage(res)
        : _navigateToShopsPage(context, res);
  }

  bool _getUserInfoIsRequired(BaseResponse<SendOtpResponse> res) =>
      res.data!.firstName == null || res.data!.lastName == null;

  void _cacheUserProfile(BaseResponse<SendOtpResponse> res) {
    UserService.updateUserProfile(
      firstName: res.data!.firstName ?? '',
      lastName: res.data!.lastName ?? '',
      phoneNumber: res.data!.phoneNumber,
    );
  }

  void _navigateToShopsPage(
    BuildContext context,
    BaseResponse<SendOtpResponse> res,
  ) async {
    final st = sl<FlutterSecureStorage>();
    await st.write(key: Prefkeys.logged, value: 'logged');
    _cacheUserProfile(res);
    Navigator.pushReplacementNamed(context, Routes.shops);
  }
}
