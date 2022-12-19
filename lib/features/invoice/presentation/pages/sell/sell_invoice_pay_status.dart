import 'package:android_pos/models/pos_resp_p1000_model.dart';
import 'package:flutter/material.dart';
import 'package:sarv_invoice_module_plugin/core/helpers/styles.dart';
import 'package:sarv_invoice_module_plugin/core/ui/b_button.dart';
import 'package:sarv_invoice_module_plugin/core/ui/b_outline_button.dart';

import '../../../../../core/config/routing/routes.dart';


class SellInvoicePayStatusPage extends StatelessWidget {
  const SellInvoicePayStatusPage({
    Key? key,
    required this.posResponse,
  }) : super(key: key);
  final PosRespModel posResponse;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _body(context),
      );

  Widget _body(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(posResponse.Message ?? '', style: S.h6Bold(context)),
              Text(posResponse.CardNo ?? ''),
              Text(posResponse.SerialNo ?? ''),
              Text(posResponse.ResponseCode ?? ''),
              const SizedBox(height: 40),
              if (posResponse.status == 10020) _newInvoice(context),
              if (posResponse.status == 10020) const SizedBox(height: 16),
              if (posResponse.status == 10020)
                _popButton(context)
              else
                _submitInvoicePaymentButton(context)
            ],
          ),
        ),
      );

  Widget _newInvoice(BuildContext context) {
    return BButton(
      expanded: true,
      minWidth: double.infinity,
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, Routes.shops);
      },
      label: 'فاکتور جدید',
    );
  }

  Widget _popButton(BuildContext context) {
    return BOutlineButton(
      minWidth: double.infinity,
      onTap: () => Navigator.pop(context),
      label: 'بازگشت',
    );
  }

  Widget _submitInvoicePaymentButton(BuildContext context) => BButton(
        label: 'ثبت نهایی فاکتور',
        onTap: () {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, Routes.shops);
        }, // Todo.
      );
}
