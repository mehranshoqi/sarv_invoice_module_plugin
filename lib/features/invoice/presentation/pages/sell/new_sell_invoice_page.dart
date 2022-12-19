import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../domain/entities/create_buy_invoice/params/buy_invoice_product/buy_invoice_product.dart';
import '../../widgets/sell/new_sell_invoice_plans.dart';
import '../../widgets/sell/new_sell_invoice_products.dart';

class NewSellInvoicePage extends StatefulWidget {
  const NewSellInvoicePage({Key? key}) : super(key: key);

  @override
  State<NewSellInvoicePage> createState() => _NewSellInvoicePageState();
}

class _NewSellInvoicePageState extends State<NewSellInvoicePage> {
  final PageController _pageController = PageController();
  List<BuyInvoiceProduct> products = [];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              width: 100.w,
              height: 100.h,
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  _title(context),
                  const SizedBox(height: 28),
                  _dateAndInvoiceId(context),
                  const SizedBox(height: 48),
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        NewSellInvoiceProducts(
                          onNextStep: (selectedProduct) {
                            setState(() => products = selectedProduct);
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.bounceIn,
                            );
                          },
                        ),
                        NewSellInvoicePlans(
                          products: products,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _title(BuildContext context) => Row(
        children: [
          Expanded(child: Divider(color: S.activeTextColor200(context))),
          const SizedBox(width: 32),
          Text(
            'فاکتور جدید',
            style:
                S.t(context).headline6!.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(width: 32),
          Expanded(child: Divider(color: S.activeTextColor200(context))),
        ],
      );

  Widget _dateAndInvoiceId(BuildContext context) {
    Jalali j = Jalali.fromDateTime(DateTime.now());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       'شماره فاکتور',
        //       style: S.captionBold(context),
        //     ),
        //     Text(
        //       '۳۲۴۲۳۴۲۴',
        //       style: S.bodyText1Bold(context),
        //     )
        //   ],
        // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'تاریخ',
              style: S.captionBold(context),
            ),
            const SizedBox(height: 2),
            Text(
              '${j.year}/${j.month}/${j.day}',
              style: S.bodyText1Bold(context),
            )
          ],
        ),
      ],
    );
  }
}
