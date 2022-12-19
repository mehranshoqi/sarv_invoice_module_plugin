import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_button.dart';
import '../../../../core/ui/b_input.dart';
import '../../../../core/ui/b_toast.dart';
import '../../domain/entities/send_phone/param/send_phone_number.dart';
import '../../domain/entities/send_phone/response/send_phone.dart';
import '../controllers/send_phone_number/cubit.dart';
import '../controllers/send_phone_number/state.dart';

// ignore: must_be_immutable
class GetPhone extends StatefulWidget {
  GetPhone({
    Key? key,
    required this.nextPage,
  }) : super(key: key);
  Function(SendPhoneResponse response, String phoneNumber) nextPage;

  @override
  State<GetPhone> createState() => _GetPhoneState();
}

class _GetPhoneState extends State<GetPhone> {
  final SendPhoneNumberParams params = SendPhoneNumberParams('');
  late SendPhoneNumberCubit _sendPhoneNumberCubit;

  @override
  void initState() {
    _sendPhoneNumberCubit = sl<SendPhoneNumberCubit>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(flex: 3),
          Text(
            'لطفا شماره همراه خود را وارد کنید',
            style: S.t(context).bodyText1,
          ),
          const SizedBox(height: 28),
          BInput(
            width: 310,
            inputType: TextInputType.number,
            placeholder: 'شماره همراه',
            maxLength: 11,
            onChange: (t) => params.phoneNumber = t,
          ),
          const Spacer(flex: 2),
          BlocProvider(
            create: (context) => _sendPhoneNumberCubit,
            child: BlocConsumer<SendPhoneNumberCubit, SendPhoneNumberState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (failure) => BToast.error(failure.errorReason!.first),
                done: (res) => widget.nextPage(res.data!, params.phoneNumber),
              ),
              builder: (_, state) => BButton(
                label: 'ادامه',
                onTap: _sendPhoneNumber,
                loading: state is SendPhoneNumberStateLoading,
              ),
            ),
          ),
          const Spacer(),
        ],
      );

  // Todo - validate params.
  _sendPhoneNumber() {
    _sendPhoneNumberCubit.sendPhone(params);
  }
}
