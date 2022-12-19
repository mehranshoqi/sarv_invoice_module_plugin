import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../core/ui/b_button.dart';
import '../../../../../core/ui/b_input.dart';
import '../../../../../core/ui/b_outline_button.dart';
import '../../../../../core/ui/b_toast.dart';
import '../../../../../core/ui/close_button.dart';
import '../../../domain/entities/create_marketer/params/params.dart';
import '../../../domain/entities/create_marketer/response/marketer/marketer.dart';
import '../../controllers/create_marketer/cubit.dart';
import '../../controllers/create_marketer/state.dart';

class NewMarketerForm extends StatefulWidget {
  const NewMarketerForm({
    Key? key,
    required this.onCreateMarketer,
  }) : super(key: key);

  final Function(Marketer marketer) onCreateMarketer;

  @override
  State<NewMarketerForm> createState() => _NewMarketerFormState();
}

class _NewMarketerFormState extends State<NewMarketerForm> {
  late CreateMarketerCubit _createMarketerCubit;
  final CreateMarketerParams _params = CreateMarketerParams('', 0, '');

  @override
  void initState() {
    _createMarketerCubit = sl<CreateMarketerCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        width: 640,
        height: 560,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 32),
              Row(
                children: [
                  CloseButtonWidget(),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    BInput(
                      onChange: (t) => _params.name = t,
                      placeholder: 'نام بازاریاب',
                      expanded: true,
                    ),
                    const SizedBox(height: 24),
                    BInput(
                      onChange: (t) => _params.commissionType = t,
                      placeholder: 'نمیدونم',
                      expanded: true,
                    ),
                    const SizedBox(height: 24),
                    BInput(
                      onChange: (t) => _params.commissionPercent = int.parse(t),
                      placeholder: 'نمیدونم',
                      expanded: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BOutlineButton(
                    label: 'انصراف',
                    onTap: () => Navigator.pop(context),
                    minWidth: 240,
                  ),
                  const SizedBox(width: 24),
                  BlocProvider(
                    create: (context) => _createMarketerCubit,
                    child:
                        BlocConsumer<CreateMarketerCubit, CreateMarketerState>(
                      listener: (context, state) => state.maybeWhen(
                        orElse: () => null,
                        error: (err) => BToast.success(err.errorReason!.first),
                        done: (res) {
                          widget.onCreateMarketer(res.data!.marketer);
                          Navigator.pop(context);
                        },
                      ),
                      builder: (context, state) => BButton(
                        minWidth: 240,
                        label: 'ذخیره ',
                        onTap: () =>
                            _createMarketerCubit.createMarketerF(_params),
                        loading: state is CreateMarketerStateLoading,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      );
}
