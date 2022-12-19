import 'package:flutter/material.dart';

import '../../../../../core/config/theme/colors.dart';
import '../../../../../core/constants/enums.dart';
import '../../../../../core/helpers/styles.dart';
import '../../../domain/entities/create_discount/params/params.dart';

// ignore: must_be_immutable
class DiscountPageViewControllers extends StatelessWidget {
  DiscountPageViewControllers({
    Key? key,
    required this.selectedDiscountType,
    required this.hNext,
    required this.hPrev,
    required this.vNext,
    required this.vPrev,
    required this.invoiceActivePageIndex,
    required this.productActivePageIndex,
    required this.createDiscountParams,
  }) : super(key: key);
  final discountTypes? selectedDiscountType;
  final Function() hPrev, vPrev, hNext, vNext;
  int productActivePageIndex, invoiceActivePageIndex;
  final CreateDiscountParams createDiscountParams;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 256,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity:
                  (productActivePageIndex == 0 && invoiceActivePageIndex == 0)
                      ? 0
                      : 1,
              duration: const Duration(milliseconds: 250),
              child: _button(
                context,
                () => isProductDiscount() ? hPrev() : vPrev(),
                Icons.keyboard_arrow_up,
              ),
            ),
            const SizedBox(height: 48),
            Align(
              alignment: Alignment.center,
              child: Text(
                'ایجاد سناریو تخفیف',
                style: S.h4Bold(context).copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(height: 48),
            _button(
              context,
              () => isProductDiscount() ? hNext() : vNext(),
              Icons.keyboard_arrow_down,
            ),
          ],
        ),
      );

  Widget _button(BuildContext context, Function() onTap, IconData icon) =>
      ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 86, height: 86),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all<Color>(
              S.activeTextColor100(context).withOpacity(.03),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000),
                side: BorderSide(
                  color: AppColors.oPrimaryColor.withOpacity(.4),
                  width: .4,
                ),
              ),
            ),
          ),
          onPressed: onTap,
          child: Icon(icon, color: AppColors.oPrimaryColor, size: 40),
        ),
      );

  bool isProductDiscount() => selectedDiscountType == discountTypes.product;
}
