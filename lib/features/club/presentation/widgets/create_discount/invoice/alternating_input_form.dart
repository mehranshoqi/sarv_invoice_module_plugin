import 'package:flutter/material.dart';

import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/ui/b_input.dart';

class InvoiceDiscountAlternatingInputForm extends StatelessWidget {
  const InvoiceDiscountAlternatingInputForm(
      {this.isPercentage = false, Key? key})
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
          _text(context, 'به ازای هر'),
          BInput(
            onChange: (t) {},
            placeholder: 'مبلغ',
            width: 160,
          ),
          _text(context, ' ریال خرید تخفیف'),
          BInput(
            onChange: (t) {},
            width: 140,
            placeholder: isPercentage ? 'درصد' : 'ریال',
          ),
          _text(context, 'تا سقف'),
          BInput(
            onChange: (t) {},
            width: 140,
            placeholder: '',
          ),
          _text(context, isPercentage ? 'درصد' : 'ریال'),
        ],
      );
  Widget _text(BuildContext context, String str) =>
      Text(str, style: S.bodyText1Bold(context));
}
