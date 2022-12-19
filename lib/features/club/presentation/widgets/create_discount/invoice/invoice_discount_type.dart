import '../../../../../../core/constants/global.dart';
import '../../../../../../core/entities/invoice_discount_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/enums.dart';
import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/ui/b_big_chips.dart';

class SelectInvoiceDiscountType extends StatelessWidget {
  const SelectInvoiceDiscountType({
    required this.productNextPage,
    required this.invoiceNextPage,
    required this.onSelectDiscountType,
    required this.selectedType,
    Key? key,
  }) : super(key: key);

  final Function() productNextPage;
  final Function() invoiceNextPage;
  final Function(InvoiceDiscountTypeModel selectedType) onSelectDiscountType;
  final InvoiceDiscountTypeModel? selectedType;

  @override
  Widget build(BuildContext context) => Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'نحوه اعمال تخفیف را انتخاب کنید.',
                style: S
                    .bodyText1Bold(context)
                    .copyWith(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 56),
              Wrap(
                spacing: 8,
                runSpacing: 20,
                children: [
                  // for (InvoiceDiscountTypeModel discountTypeModel
                  //     in G.invoiceDiscountTypes)
                  //   _singleInvoiceDiscountTypeOption(context, discountTypeModel)
                ],
              ),
              const SizedBox(height: 48),
              AnimatedOpacity(
                opacity: selectedType == null ? 0 : 1,
                duration: const Duration(milliseconds: 240),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 28,
                    horizontal: 56,
                  ),
                  alignment: Alignment.center,
                  width: 900,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: S.primary(context).withOpacity(.075)),
                  child: selectedType?.child ?? const SizedBox(height: 100),
                ),
              ),
            ],
          ),
        ),
      );

  Color _getBgColor(InvoiceDiscountType type, BuildContext context) =>
      selectedType?.type == type
          ? S.activeTextColor100(context)
          : Colors.transparent;

  _singleInvoiceDiscountTypeOption(
          BuildContext context, InvoiceDiscountTypeModel discountTypeModel) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: BBigChips(
          onTap: () {
            onSelectDiscountType(discountTypeModel);
            // productNextPage();
          },
          bgColor: _getBgColor(discountTypeModel.type, context),
          borderColor: selectedType?.type == discountTypeModel.type
              ? S.activeTextColor300(context)
              : S.activeTextColor200(context),
          child: Align(
            alignment: Alignment.center,
            child: Text(discountTypeModel.label),
          ),
        ),
      );
}
