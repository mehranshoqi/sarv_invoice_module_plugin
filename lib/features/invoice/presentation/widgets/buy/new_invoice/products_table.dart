import 'package:flutter/material.dart';

import '../../../../../../core/helpers/styles.dart';
import '../../../../domain/entities/create_buy_invoice/params/buy_invoice_product/buy_invoice_product.dart';

class NewBuyInvoiceProductsTable extends StatelessWidget {
  const NewBuyInvoiceProductsTable({
    Key? key,
    required this.invoiceProducts,
  }) : super(key: key);
  final List<BuyInvoiceProduct> invoiceProducts;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
            color: S.activeTextColor(context).withOpacity(.02),
            border: Border(
              bottom: BorderSide(
                color: S.activeTextColor100(context),
                width: 1,
              ),
            ),
          ),
          width: 840,
          child: Column(
            children: [
              _header(context),
              const SizedBox(height: 12),
              if (invoiceProducts.isEmpty)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                    child: Text(
                      'کالایی به فاکتور اضافه نشده است',
                      style: S.t(context).caption,
                    ),
                  ),
                )
              else
                for (BuyInvoiceProduct product in invoiceProducts)
                  _singleInvoiceProduct(context, product),
              const SizedBox(height: 6),
            ],
          ),
        ),
      );

  Widget _singleInvoiceProduct(
    BuildContext context,
    BuyInvoiceProduct product,
  ) =>
      Row(
        children: [
          _dataCell(
            context,
            value: product.name ?? product.productId,
            alignment: Alignment.centerRight,
          ),
          _dataCell(
            context,
            value: product.count.toString(),
          ),
          _dataCell(
            context,
            value: product.buyPrice.toString(),
          ),
          _dataCell(
            context,
            value: product.totalDiscount.toString(),
          ),
          _dataCell(context, value: product.totalPrice.toString()),
          _dataCell(
            context,
            value: product.totalPriceWithDiscount == null
                ? product.totalPrice.toString()
                : product.totalPriceWithDiscount.toString(),
            flex: 2,
          ),
        ],
      );

  Widget _header(BuildContext context) => Container(
        color: S.activeTextColor100(context),
        height: 32,
        child: Row(
          children: [
            _dataCell(
              context,
              header: true,
              value: 'کد کالا',
              alignment: Alignment.centerRight,
            ),
            _dataCell(
              context,
              header: true,
              value: 'تعداد',
            ),
            _dataCell(
              context,
              header: true,
              value: 'فی',
            ),
            _dataCell(
              context,
              header: true,
              value: 'تخفیف',
            ),
            _dataCell(context, header: true, value: 'جمع کل'),
            _dataCell(context,
                header: true, value: 'قیمت نهایی پس از تخفیف', flex: 2),
          ],
        ),
      );

  Widget _dataCell(
    BuildContext context, {
    bool header = false,
    String value = '',
    AlignmentGeometry alignment = Alignment.center,
    int flex = 1,
  }) =>
      Expanded(
        flex: flex,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          alignment: alignment,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            value == 'null' ? '-' : value,
            style: S.t(context).bodyText2!.copyWith(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: header ? FontWeight.bold : FontWeight.normal,
                ),
          ),
        ),
      );
}
