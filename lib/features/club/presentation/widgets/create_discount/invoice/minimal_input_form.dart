import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/ui/b_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InvoiceDiscountMinimalInputForm extends StatelessWidget {
  const InvoiceDiscountMinimalInputForm({this.isPercentage = false, Key? key})
      : super(key: key);

  final bool isPercentage;

  @override
  Widget build(BuildContext context) => Wrap(
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 14,
        runSpacing: 22,
        children: [
          _text(context, 'در صورت'),
          BInput(
            onChange: (t) {},
            placeholder: 'مبلغ',
          ),
          _text(context, ' ریال خرید اعمال'),
          BInput(
            onChange: (t) {},
            width: 140,
            placeholder: '',
          ),
          _text(context, isPercentage ? 'درصد تخفیف' : 'ریال تخفیف'),
        ],
      );
  Widget _text(BuildContext context, String str) =>
      Text(str, style: S.bodyText1Bold(context));
}
