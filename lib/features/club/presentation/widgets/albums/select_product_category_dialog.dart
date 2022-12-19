import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../core/ui/b_input.dart';
import '../../../../../core/ui/close_button.dart';
import '../../../../product/domain/entities/create_product_category/response/category/product_category.dart';
import '../../../../product/domain/entities/get_product_categories/params/params.dart';
import '../../../../product/presentation/controllers/get_product_categories/cubit.dart';
import '../../../../product/presentation/controllers/get_product_categories/state.dart';

class SelectProductCategoryDialog extends StatefulWidget {
  const SelectProductCategoryDialog({
    Key? key,
    required this.onSelectCategory,
    required this.selectedProductTypeId,
  }) : super(key: key);
  final Function(ProductCategory type) onSelectCategory;
  final String selectedProductTypeId;

  @override
  State<SelectProductCategoryDialog> createState() =>
      _SelectProductCategoryDialogState();
}

class _SelectProductCategoryDialogState
    extends State<SelectProductCategoryDialog> {
  late GetProductCategoriesCubit _categoriesCubit;
  List<ProductCategory> _categories = [], _filteredList = [];

  @override
  void initState() {
    super.initState();
    _categoriesCubit = sl<GetProductCategoriesCubit>();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        height: 600,
        width: 480,
        child: Column(
          children: [
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerRight,
              child: CloseButtonWidget(),
            ),
            const SizedBox(height: 28),
            BlocProvider(
              create: (context) => _categoriesCubit
                ..getProductCategoriesF(
                  GetProductCategoriesParams(widget.selectedProductTypeId),
                ),
              child: BlocConsumer<GetProductCategoriesCubit,
                  GetProductCategoriesState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  done: (res) => setState(
                    () => _categories =
                        _filteredList = res.data!.productCategories,
                  ),
                ),
                builder: (context, state) => BInput(
                  expanded: true,
                  onChange: (t) {
                    List<ProductCategory> temp = [];
                    for (ProductCategory category in _categories)
                      if (category.name.contains(t)) temp.add(category);
                    _filteredList = temp;
                    setState(() {});
                  },
                  placeholder: 'جستجو در میان دسته بندی کالا',
                ),
              ),
            ),
            const SizedBox(height: 32),
            _items(context),
          ],
        ),
      );

  Widget _items(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (ProductCategory category in _filteredList)
                _singleItem(category),
            ],
          ),
        ),
      );

  Widget _singleItem(ProductCategory category) => InkWell(
        onTap: () {
          widget.onSelectCategory(category);
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: S.activeTextColor100(context)),
            ),
          ),
          child: Text(category.name),
        ),
      );
}
