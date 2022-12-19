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
import '../../../../core/ui/b_toast.dart';
import '../../domain/entities/send_name/param/send_name_param.dart';
import '../../domain/entities/send_name/response/send_name_response.dart';
import '../../domain/entities/send_otp/response/send_otp_response.dart';
import '../controllers/send_name/cubit.dart';
import '../controllers/send_name/state.dart';

// ignore: must_be_immutable
class GetName extends StatefulWidget {
  GetName({
    Key? key,
    required this.onDone,
    required this.sendOtpResponse,
  }) : super(key: key);
  final Function() onDone;
  SendOtpResponse? sendOtpResponse;

  @override
  State<GetName> createState() => _GetNameState();
}

class _GetNameState extends State<GetName> {
  final SendNameParams _params = SendNameParams('', '');
  late SendNameCubit _sendNameCubit;

  @override
  void initState() {
    _sendNameCubit = sl<SendNameCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(flex: 3),
          Text(
            'لطفا نام و نام خانوادگی خود را وارد کنید',
            style: S.t(context).bodyText1,
          ),
          const SizedBox(height: 28),
          BInput(
            width: 310,
            placeholder: 'نام',
            onChange: (t) => _params.firstName = t,
            enabled: widget.sendOtpResponse!.firstName?.isNotEmpty ?? true,
          ),
          const SizedBox(height: 18),
          BInput(
            width: 310,
            placeholder: 'نام خانوادگی',
            onChange: (t) => _params.lastName = t,
            enabled: widget.sendOtpResponse!.lastName?.isNotEmpty ?? true,
          ),
          const Spacer(flex: 2),
          BlocProvider(
            create: (context) => _sendNameCubit,
            child: BlocConsumer<SendNameCubit, SendNameState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                done: (res) => _sendNameResponseHandler(res),
                error: (failure) => BToast.error(failure.errorReason!.first),
              ),
              builder: (context, state) => BButton(
                label: 'تایید',
                onTap: _saveUserName,
                loading: state is SendNameStateLoading,
              ),
            ),
          ),
          const Spacer(),
        ],
      );

  void _saveUserName() => _fromValidation()
      ? _sendNameCubit.sendNameF(_params)
      : BToast.success('لطفا نام و نام خانوادگی را وارد نمایید.');

  bool _fromValidation() =>
      _params.firstName.isNotEmpty && _params.lastName.isNotEmpty;

  void _sendNameResponseHandler(BaseResponse<SendNameResponse> res) {
    final st = sl<FlutterSecureStorage>();
    st.write(key: Prefkeys.logged, value: 'logged');
    _cacheUserProfile(res);
    Navigator.pushReplacementNamed(context, Routes.shops);
  }

  void _cacheUserProfile(BaseResponse<SendNameResponse> res) {
    UserService.updateUserProfile(
      firstName: res.data!.firstName,
      lastName: res.data!.lastName,
      phoneNumber: res.data!.phoneNumber,
    );
  }
}
