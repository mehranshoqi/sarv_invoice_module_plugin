import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_alert_dialog.dart';
import '../../../../core/ui/b_input.dart';
import '../../../../core/ui/b_list_row_item.dart';
import '../../../../core/ui/b_loading.dart';
import '../../../../core/ui/b_toast.dart';
import '../../../../core/ui/close_button.dart';
import '../../domain/entities/create_product/response/product/product.dart';
import '../../domain/entities/get_products/params/params.dart';
import '../controllers/get_products/cubit.dart';
import '../controllers/get_products/state.dart';

class ProductsSearchDialog extends StatefulWidget {
  const ProductsSearchDialog({
    Key? key,
    required this.onSelectProduct,
  }) : super(key: key);
  final Function(Product selectedProduct) onSelectProduct;

  @override
  State<ProductsSearchDialog> createState() => _ProductsSearchDialogState();
}

class _ProductsSearchDialogState extends State<ProductsSearchDialog> {
  late GetProductsCubit _getProductsCubit;
  final GetProductsParams _params = GetProductsParams(search: '');
  List<Product> _products = [];

  @override
  void initState() {
    _getProductsCubit = sl<GetProductsCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        width: 1300,
        height: 800,
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CloseButtonWidget(),
                Text(
                  'جستجو کالا',
                  style: S
                      .t(context)
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 48),
            BInput(
              onChange: (t) => _search(t, context),
              expanded: true,
              placeholder: 'جستجو در میان نام و کد کالا ها',
            ),
            const SizedBox(height: 40),
            _productsList(context),
          ],
        ),
      );

  Widget _productsList(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) =>
                _getProductsCubit
              ..getProductsF(
                GetProductsParams(
                  search: '',
                  joinStocks: true,
                ),
              ),
            child: BlocConsumer<GetProductsCubit, GetProductsState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (err) => BToast.success(err.errorReason!.first),
                done: (res) => setState(() => _products = res.data!.items),
              ),
              builder: (context, state) => Column(
                children: [
                  if (state is GetProductsStateLoading) const BLoading(),
                  for (Product product in _products)
                    _singleProduct(context, product),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _singleProduct(BuildContext context, Product product) => BRowListItem(
        child: Expanded(
          child: Row(
            children: [
              Container(
                width: 110,
                alignment: Alignment.centerRight,
                child: Text(
                  product.code,
                  style: S
                      .t(context)
                      .caption!
                      .copyWith(color: S.activeTextColor(context)),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  product.name,
                  overflow: TextOverflow.ellipsis,
                  style: S
                      .t(context)
                      .caption!
                      .copyWith(color: S.activeTextColor(context)),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          widget.onSelectProduct(product);
          Navigator.pop(context);
        },
        showArrow: false,
        index: _products.indexOf(product),
      );

  void _search(String t, BuildContext context) {
    if (t.length > 1) {
      _params.search = t;
      _getProductsCubit.getProductsF(_params);
    }
  }
}
