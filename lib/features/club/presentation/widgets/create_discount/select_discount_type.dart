import 'package:flutter/material.dart';

import '../../../../../core/constants/enums.dart';
import '../../../../../core/helpers/styles.dart';
import '../../../../../core/ui/b_big_chips.dart';

class SelectDiscountType extends StatelessWidget {
  const SelectDiscountType({
    required this.productNextPage,
    required this.invoiceNextPage,
    required this.onSelectDiscountType,
    required this.selectedType,
    required this.onSelectType,
    Key? key,
  }) : super(key: key);

  final Function() productNextPage, invoiceNextPage;
  final Function(String selectedType) onSelectType;
  final Function(discountTypes selectedDiscountType) onSelectDiscountType;
  final discountTypes? selectedType;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'نوع پلن تخفیف را انتخاب کنید.',
              style: S
                  .bodyText1Bold(context)
                  .copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BBigChips(
                  onTap: () {
                    onSelectDiscountType(discountTypes.product);
                    productNextPage();
                  },
                  bgColor: _getBgColor(discountTypes.product, context),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'تخفیف برای کالا',
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                BBigChips(
                  bgColor: _getBgColor(discountTypes.invoice, context),
                  onTap: () {
                    onSelectDiscountType(discountTypes.invoice);
                    invoiceNextPage();
                  },
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'تخفیف برای فاکتور',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Color _getBgColor(discountTypes type, BuildContext context) =>
      selectedType == type ? S.activeTextColor100(context) : Colors.transparent;
}
