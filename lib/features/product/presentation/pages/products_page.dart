import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/ui/b_input.dart';
import '../../../../core/ui/b_text_button.dart';
import '../widgets/new_product/new_product_form.dart';
import '../widgets/products_table.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  GlobalKey<ProductsTableState> _myKey = GlobalKey<ProductsTableState>();
  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(height: 3.h),
          _header(context),
          const SizedBox(height: 28),
          ProductsTable(
            onAddProduct: (product) {},
            key: _myKey,
          ), // Todo - search.
        ],
      );

  Widget _header(BuildContext context) => Row(
        children: [
          const SizedBox(width: 32),
          BInput(
            placeholder: 'جستجو کالا',
            smaller: true,
            width: 40.w,
            fillColor: Colors.white,
            border: true,
            onChange: (t) {},
          ),
          const Spacer(),
          BTextButton(
            label: '+ افزودن کالا',
            onTap: () => _showNewProductModal(context),
          ),
          const SizedBox(width: 32),
        ],
      );

  void _showNewProductModal(BuildContext context) =>
      showMaterialModalBottomSheet(
        context: context,
        builder: (context) => NewProductForm(
          onCreateNewProduct: (newProduct) =>
              _myKey.currentState!.addNewProductToTable(newProduct),
        ),
      );
}
