import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/constants/enums.dart';
import '../../../../../core/helpers/styles.dart';
import '../../../../../core/ui/b_button.dart';
import '../../../../../core/ui/b_input.dart';
import '../../../../../core/ui/b_modal_sheet.dart';
import '../../../domain/entities/create_buy_invoice/response/invoice/buy_invoice.dart';

class BuyInvoicePayModal extends StatefulWidget {
  BuyInvoicePayModal({
    Key? key,
    required this.buyInvoice,
  }) : super(key: key);
  final BuyInvoice buyInvoice;

  @override
  State<BuyInvoicePayModal> createState() => _BuyInvoicePayModalState();
}

class _BuyInvoicePayModalState extends State<BuyInvoicePayModal> {
  // Todo - make list by Object.
  final List<InvoicePayOption> _activePayOptions = [];

  final ExpandableController _expandableController = ExpandableController();

  @override
  Widget build(BuildContext context) => BModalSheet(
        height: 90.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'اطلاعات پرداخت',
                style: S.h5Bold(context).copyWith(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 36),
              _invoiceNumberAndSellerInfo(context),
              const SizedBox(height: 120),
              _payInfo(context),
              const SizedBox(height: 64),
              _payOptions(context),
              const SizedBox(height: 64),
            ],
          ),
        ),
      );

  Widget _singleInfo(BuildContext context, String label, String value) => Row(
        children: [
          Text(
            label,
            style:
                S.bodyText1Bold(context).copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(width: 14),
          Stack(
            children: [
              BInput(onChange: (t) {}),
              Positioned.fill(
                child: Center(
                  child: Text(
                    value,
                    style: S
                        .bodyText1Bold(context)
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget _invoiceNumberAndSellerInfo(BuildContext context) => Row(
        children: [
          _singleInfo(
            context,
            'شماره فاکتور ',
            widget.buyInvoice.invoiceNumber.toString(),
          ),
          const SizedBox(width: 64),
          _singleInfo(
            context,
            'فروشنده',
            // buyInvoice.sellerId.toString(),
            'xxx', // Todo - get seller name.
          ),
        ],
      );

  Widget _payInfo(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                'مجموع مبلغ',
                style: S.h5Bold(context).copyWith(fontWeight: FontWeight.w900),
              ),
              const Expanded(child: Divider(indent: 28, endIndent: 28)),
              Text(
                // buyInvoice.totalAmount.toString(),
                '2,000,473',
                style: S.h5Bold(context).copyWith(fontWeight: FontWeight.w900),
              ),
              const SizedBox(width: 6),
              Text(
                'تومان',
                style: S.bodyText1Bold(context),
              ),
            ],
          ),
          const SizedBox(height: 2),
        ],
      );

  Widget _payOptions(BuildContext context) => Column(
        children: [
          _options(context),
          const SizedBox(height: 24),
          _newPayOptionForm(context),
          const SizedBox(height: 20),
          _createOptionButton(context),
        ],
      );

  Widget _createOptionButton(BuildContext context) => ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 350, height: 52),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor:
                MaterialStateProperty.all<Color>(S.activeTextColor100(context)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          onPressed: () => _expandableController.toggle(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_card_rounded,
                color: S.activeTextColor800(context),
                size: 20,
              ),
              const SizedBox(width: 6),
              const Text('افزودن نحوه پرداخت'),
            ],
          ),
        ),
      );

  Widget _newPayOptionForm(BuildContext context) => ExpandableNotifier(
        controller: _expandableController,
        child: ScrollOnExpand(
          scrollOnExpand: true,
          scrollOnCollapse: false,
          child: ExpandablePanel(
            theme: ExpandableThemeData(
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: false,
              iconColor: S.activeTextColor800(context),
              iconSize: 18,
              hasIcon: false,
              iconPadding: EdgeInsets.zero,
            ),
            header: const SizedBox(),
            collapsed: const SizedBox(),
            expanded: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: S.activeTextColor100(context).withOpacity(.04),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'افزودن شیوه پرداخت از طریق',
                      style: S.bodyText1Bold(context),
                    ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _singlePayOptionInput(context, InvoicePayOption.cash),
                        _singlePayOptionInput(context, InvoicePayOption.havale),
                        _singlePayOptionInput(context, InvoicePayOption.check),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            builder: (_, collapsed, expanded) =>
                Expandable(collapsed: collapsed, expanded: expanded),
          ),
        ),
      );

  Widget _options(BuildContext context) => Column(
        children: [
          for (InvoicePayOption payOption in _activePayOptions)
            _singlePayOption(context, payOption),
        ],
      );

  Widget _singlePayOption(BuildContext context, InvoicePayOption option) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(11),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: S.activeTextColor100(context),
              ),
              child: Text('1'),
            ),
            const SizedBox(width: 20),
            if (option == InvoicePayOption.cash) _payCashOption(context),
            if (option == InvoicePayOption.havale) _payHavaleOption(context),
            if (option == InvoicePayOption.check) _payCheckOption(context),

            /// delete button
            BButton(
              minWidth: 110,
              label: 'حذف',
              onTap: () => setState(() => _activePayOptions.remove(option)),
              bgColor: S.primary(context).withOpacity(.06),
              textColor: S.primary(context),
            ),
          ],
        ),
      );

  Widget _payCashOption(BuildContext context) => Expanded(
        child: Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: 130,
              child: Text('پرداخت نقدی', style: S.h6Bold(context)),
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
          ],
        ),
      );

  Widget _payHavaleOption(BuildContext context) => Expanded(
        child: Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: 130,
              child: Text('حواله بانکی', style: S.h6Bold(context)),
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
          ],
        ),
      );

  Widget _payCheckOption(BuildContext context) => Expanded(
        child: Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: 130,
              child: Text('چک بانکی', style: S.h6Bold(context)),
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
            const SizedBox(width: 20),
            BInput(
              onChange: (t) {},
              width: 180,
            ),
          ],
        ),
      );

  Widget _singlePayOptionInput(BuildContext context, InvoicePayOption option) =>
      InkWell(
        onTap: () {
          setState(() => _activePayOptions.add(option));
          _expandableController.toggle();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: S.activeTextColor100(context), width: .5),
            color: Colors.white54,
          ),
          height: 120,
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _getPayOptionTitle(option),
                style: S.bodyText1Bold(context),
              ),
              const SizedBox(height: 20),
              Icon(Icons.add_circle_sharp, color: S.activeTextColor(context)),
            ],
          ),
        ),
      );

  String _getPayOptionTitle(InvoicePayOption option) =>
      option == InvoicePayOption.cash
          ? 'پرداخت نقدی'
          : option == InvoicePayOption.havale
              ? 'حواله بانکی'
              : 'چک بانکی';
}
