import '../../domain/entities/get_invoice_discount/params/params.dart';
import '../controllers/get_invoice_discount/cubit.dart';
import '../controllers/get_invoice_discount/state.dart';
import '../controllers/get_product_discount/cubit.dart';
import '../controllers/get_product_discount/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_text_button.dart';
import '../widgets/create_discount/create_discount.dart';

class DiscountsPage extends StatefulWidget {
  const DiscountsPage({Key? key}) : super(key: key);

  @override
  State<DiscountsPage> createState() => _DiscountsPageState();
}

class _DiscountsPageState extends State<DiscountsPage> {
  late GetInvoiceDiscountsCubit _getInvoiceDiscountsCubit;
  late GetProductDiscountCubit _getProductDiscountCubit;

  @override
  void initState() {
    _getInvoiceDiscountsCubit = sl<GetInvoiceDiscountsCubit>();
    _getProductDiscountCubit = sl<GetProductDiscountCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Text(
                  'تخفیف ها',
                  style: S
                      .t(context)
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                const Spacer(),
                BTextButton(
                  label: '+ ایجاد سناریو تخفیف',
                  onTap: () => _showNewDiscountFrom(context),
                ),
              ],
            ),
            const SizedBox(height: 32),
            _discountsList(context),
          ],
        ),
      );

  void _showNewDiscountFrom(BuildContext context) =>
      showMaterialModalBottomSheet(
        context: context,
        builder: (context) => const CreateDiscountPage(),
      );

  Widget _discountsList(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => _getInvoiceDiscountsCubit),
              BlocProvider(create: (context) => _getProductDiscountCubit),
            ],
            child: MultiBlocListener(
              listeners: [
                BlocListener<GetInvoiceDiscountsCubit,
                    GetInvoiceDiscountsState>(
                  listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    done: (res) {
                      print('get invoice discount done');
                    },
                  ),
                ),
                BlocListener<GetProductDiscountCubit, GetProductDiscountState>(
                  listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    done: (res) {
                      print('get product discount done');
                    },
                  ),
                ),
              ],
              child: Container(),
            ),
          ),
        ),
      );
}
