import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_alert_dialog.dart';
import '../../../../core/ui/b_list_row_item.dart';
import '../../../../core/ui/b_loading.dart';
import '../../../../core/ui/b_text_button.dart';
import '../../../../core/ui/b_toast.dart';
import '../../../../core/ui/close_button.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_customer/response/customer/customer.dart';
import '../controllers/get_customers/cubit.dart';
import '../controllers/get_customers/state.dart';
import 'new_customer_form.dart';

class CustomersWidget extends StatefulWidget {
  const CustomersWidget({
    Key? key,
    required this.onSelectCustomer,
    this.boxMargin = 18,
    this.dialog = true,
  }) : super(key: key);
  final Function(Customer selectedCustomer) onSelectCustomer;
  final bool dialog;
  final double boxMargin;

  @override
  State<CustomersWidget> createState() => _CustomersWidgetState();
}

class _CustomersWidgetState extends State<CustomersWidget> {
  final List<Customer> _customers = [];
  late GetCustomersCubit _getCustomersCubit;

  @override
  void initState() {
    super.initState();
    _getCustomersCubit = sl<GetCustomersCubit>();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        child: widget.dialog
            ? BAlertDialog(
                width: 1300,
                height: 92.h,
                margin: widget.boxMargin,
                child: _customersWidget(context),
              )
            : _customersWidget(context),
      );

  Widget _customersWidget(BuildContext context) => Column(
        children: [
          const SizedBox(height: 36),
          Row(
            children: [
              widget.dialog
                  ? const CloseButtonWidget()
                  : Text(
                      'خریداران',
                      style: S
                          .h5Bold(context)
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
              const Spacer(),
              BTextButton(
                label: '+ خریدار جدید',
                onTap: () => _showNewCustomerForm(context),
              ),
            ],
          ),
          const SizedBox(height: 32),
          _customersList(context),
          const SizedBox(height: 12),
        ],
      );

  Widget _customersList(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (_) => _getCustomersCubit..getCustomersF(NoParams()),
            child: BlocConsumer<GetCustomersCubit, GetCustomersState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (err) => BToast.success(err.errorReason!.first),
                done: (res) => setState(
                  () => _customers.addAll(res.data!.items),
                ),
              ),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const BLoading(),
                done: (res) => Column(
                  children: [
                    for (int i = 0; i < _customers.length; i++)
                      _singleCustomer(
                        context,
                        _customers[i],
                        i,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _singleCustomer(BuildContext context, Customer customer, int index) =>
      BRowListItem(
        child: Expanded(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  customer.lastName ?? '-',
                  style: S
                      .t(context)
                      .caption!
                      .copyWith(color: S.activeTextColor600(context)),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                alignment: Alignment.center,
                width: 140,
                child: Text(
                  customer.phoneNumber,
                  style: S.t(context).caption,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          widget.onSelectCustomer(customer);
          Navigator.pop(context);
        },
        index: index,
        showArrow: false,
      );

  void _showNewCustomerForm(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => NewCustomerForm(
          onCreateCustomer: (newCustomer) => setState(
            () => _customers.add(newCustomer),
          ),
        ),
      );
}
