import '../../../../../../../core/ui/b_loading.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/injection/di.dart';
import '../../../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../../../core/ui/b_button.dart';
import '../../../../../../../core/ui/b_toast.dart';
import '../../../../../../../core/ui/close_button.dart';
import '../../../../../domain/entities/create_product_category/response/category/product_category.dart';
import '../../../../../domain/entities/create_product_type/response/product_type/product_type.dart';
import '../../../../../domain/entities/get_product_categories/params/params.dart';
import '../../../../controllers/get_product_categories/cubit.dart';
import '../../../../controllers/get_product_categories/state.dart';
import 'new_product_category_from.dart';
import 'single_product_category.dart';

class ProductCategories extends StatefulWidget {
  const ProductCategories({
    Key? key,
    required this.selectedProductType,
    required this.onSelectCategory,
  }) : super(key: key);
  final ProductType selectedProductType;
  final Function(ProductCategory selectedCategory) onSelectCategory;

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  late GetProductCategoriesCubit _getProductCategoriesCubit;
  List<ProductCategory> _categoriesList = [];

  @override
  void initState() {
    _getProductCategoriesCubit = sl<GetProductCategoriesCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        width: 1300,
        height: 800,
        child: Column(
          children: [
            const SizedBox(height: 36),
            Row(
              children: [
                CloseButtonWidget(),
                const Spacer(),
                BButton(
                  label: '+ دسته بندی جدید',
                  onTap: () => _showNewProductCategoryForm(context),
                ),
              ],
            ),
            const SizedBox(height: 48),
            _categories(context),
            const SizedBox(height: 12),
          ],
        ),
      );

  Widget _categories(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => _getProductCategoriesCubit
              ..getProductCategoriesF(
                GetProductCategoriesParams(
                  widget.selectedProductType.id,
                ),
              ),
            child: BlocConsumer<GetProductCategoriesCubit,
                GetProductCategoriesState>(
              listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  error: (err) => BToast.success(err.errorReason!.first),
                  done: (res) => setState(
                      () => _categoriesList = res.data!.productCategories)),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const BLoading(),
                error: (err) => Text('err - todo.'),
                done: (res) => Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.spaceBetween,
                  spacing: 28,
                  runSpacing: 24,
                  children: [
                    for (ProductCategory category in _categoriesList)
                      SingleProductCategory(
                        category: category,
                        onSelect: widget.onSelectCategory,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  void _showNewProductCategoryForm(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => NewProductCategoryForm(
          selectedProductType: widget.selectedProductType,
          onCreateNewCategory: (newCategory) => setState(
            () => _categoriesList.add(newCategory),
          ),
        ),
      );
}
