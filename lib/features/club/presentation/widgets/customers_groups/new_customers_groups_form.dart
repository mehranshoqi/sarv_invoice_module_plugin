import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../core/ui/b_button.dart';
import '../../../../../core/ui/b_input.dart';
import '../../../../../core/ui/b_toast.dart';
import '../../../domain/entities/create_customers_group/params/params.dart';
import '../../../domain/entities/create_customers_group/response/customers_group/customers_group.dart';
import '../../controllers/create_customers_group/cubit.dart';
import '../../controllers/create_customers_group/state.dart';

class NewCustomersGroupForm extends StatefulWidget {
  const NewCustomersGroupForm({
    Key? key,
    required this.onCreatedNewGroup,
  }) : super(key: key);

  final Function(CustomersGroup newGroup) onCreatedNewGroup;

  @override
  State<NewCustomersGroupForm> createState() => _NewCustomersGroupFormState();
}

class _NewCustomersGroupFormState extends State<NewCustomersGroupForm> {
  late CreateCustomersGroupCubit _createCustomersGroupCubit;
  final CreateCustomersGroupParams _params = CreateCustomersGroupParams('');

  @override
  void initState() {
    _createCustomersGroupCubit = sl<CreateCustomersGroupCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        height: 520,
        width: 400,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 4),
              Text(
                'ساخت گروه مشتریان',
                style: S
                    .t(context)
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w900),
              ),
              const Spacer(),
              BInput(
                onChange: (t) => _params.name = t,
                expanded: true,
                placeholder: 'نام گروه',
              ),
              const Spacer(),
              BlocProvider(
                create: (context) => _createCustomersGroupCubit,
                child: BlocConsumer<CreateCustomersGroupCubit,
                    CreateCustomersGroupState>(
                  listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    error: (err) => BToast.success(err.errorReason!.first),
                    done: (res) {
                      widget.onCreatedNewGroup(res.data!.customerGroup);
                      Navigator.pop(context);
                    },
                  ),
                  builder: (context, state) => BButton(
                    minWidth: 250,
                    label: 'ذخیره',
                    onTap: _createGroup,
                    loading: state is CreateCustomersGroupStateLoading,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  void _createGroup() {
    _createCustomersGroupCubit.createCustomersGroupF(_params);
  }
}
