import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sizer/sizer.dart';

import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_alert_dialog.dart';
import '../../../../core/ui/b_button.dart';
import '../../../../core/ui/b_input.dart';
import '../../../../core/ui/b_outline_button.dart';
import '../../../../core/ui/b_toast.dart';
import '../../../../core/ui/close_button.dart';
import '../../../club/presentation/widgets/create_discount/select_customers_group.dart';
import '../../domain/entities/create_customer/params/params.dart';
import '../../domain/entities/create_customer/response/customer/customer.dart';
import '../controllers/create_customer/cubit.dart';
import '../controllers/create_customer/state.dart';

class NewCustomerForm extends StatefulWidget {
  const NewCustomerForm({
    Key? key,
    required this.onCreateCustomer,
  }) : super(key: key);

  final Function(Customer newCustomer) onCreateCustomer;

  @override
  State<NewCustomerForm> createState() => _NewCustomerFormState();
}

class _NewCustomerFormState extends State<NewCustomerForm> {
  final TextEditingController _customerGroupTextEditingController =
      TextEditingController();
  final CreateCustomerParams _createCustomerParams = CreateCustomerParams(
    '',
    '',
    '',
  );
  late CreateCustomerCubit _createCustomerCubit;

  @override
  void initState() {
    _createCustomerCubit = sl<CreateCustomerCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        width: 500,
        height: 700,
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(children: const [CloseButtonWidget(), Spacer()]),
            const Spacer(),
            BInput(
              onChange: (t) => _createCustomerParams.phoneNumber = t,
              placeholder: 'شماره همراه',
              expanded: true,
            ),
            const SizedBox(height: 24),
            BInput(
              onChange: (t) => _createCustomerParams.lastName = t,
              placeholder: 'نام خریدار',
              expanded: true,
            ),
            const SizedBox(height: 24),
            Stack(
              children: [
                BInput(
                  onChange: (t) {},
                  placeholder: 'گروه مشتریان',
                  expanded: true,
                  controller: _customerGroupTextEditingController,
                ),
                Positioned.fill(
                  child: Container(
                    child: InkWell(
                      onTap: () => _showCustomersGroups(context),
                    ),
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BOutlineButton(
                  label: 'انصراف',
                  onTap: () => Navigator.pop(context),
                  minWidth: 35.w,
                ),
                const SizedBox(width: 24),
                BlocProvider(
                  create: (context) => _createCustomerCubit,
                  child: BlocConsumer<CreateCustomerCubit, CreateCustomerState>(
                    listener: (context, state) => state.maybeWhen(
                      orElse: () => null,
                      error: (err) => BToast.success(err.errorReason!.first),
                      done: (res) {
                        widget.onCreateCustomer(res.data!.customer);
                        Navigator.pop(context);
                      },
                    ),
                    builder: (context, state) => BButton(
                      minWidth: 35.w,
                      label: 'ذخیره ',
                      onTap: () => _createCustomerCubit.createCustomerF(
                        _createCustomerParams,
                      ),
                      loading: state is CreateCustomerStateLoading,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      );

  void _showCustomersGroups(BuildContext context) => showDialog(
        context: context,
        builder: (context) => BAlertDialog(
          width: 900,
          height: 700,
          child: Column(
            children: [
              const SizedBox(height: 32),
              Row(
                children: [
                  const CloseButtonWidget(),
                  const Spacer(),
                  Text('انتخاب گروه مشتریان', style: S.bodyText1Bold(context)),
                  const Spacer(),
                  const SizedBox(width: 40),
                ],
              ),
              Expanded(
                child: SelectCustomersGroup(
                  onSelectGroups: (_) {},
                  selectSingleGroup: true,
                  onSelectedSingleGroup: (selectedGroup) {
                    _customerGroupTextEditingController.text =
                        selectedGroup.name;
                    _createCustomerParams.groupId = selectedGroup.id!;
                  },
                ),
              ),
            ],
          ),
        ),
      );
}
