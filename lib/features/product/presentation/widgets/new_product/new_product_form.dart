import 'dart:math';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/ui/b_modal_sheet.dart';
import '../../../domain/entities/create_product/params/params.dart';
import '../../../domain/entities/create_product/response/product/product.dart';
import '../../../domain/entities/create_product_type/response/product_type/product_type.dart';
import 'page_controller_widget.dart';
import 'product_profile/new_product_profile.dart';
import 'product_type/select_product_type.dart';
import 'product_warehouse/set_warehouse_modal.dart';

class NewProductForm extends StatefulWidget {
  const NewProductForm({
    Key? key,
    required this.onCreateNewProduct,
  }) : super(key: key);
  final Function(Product product) onCreateNewProduct;

  @override
  State<NewProductForm> createState() => _NewProductFormState();
}

class _NewProductFormState extends State<NewProductForm> {
  final PageController _pageController = PageController(initialPage: 0);
  // Todo - create new product params.
  ProductType? selectedProductType;
  int _activePageIndex = 0;
  final CreateProductParams _newProductParams = CreateProductParams(
    '',
    '',
    0,
    '',
    '',
    '',
    false,
    false,
  );

  @override
  Widget build(BuildContext context) => BModalSheet(
        height: max(600, 90.w),
        child: Row(
          children: [
            PageControllerWidget(
              nextPage: _nextPage,
              prevPage: _prevPage,
              activePageIndex: _activePageIndex,
            ),
            VerticalDivider(
              indent: 8.w,
              endIndent: 8.w,
              color: S.activeTextColor100(context),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (idx) => setState(() => _activePageIndex = idx),
                children: [
                  SelectProductType(
                    nextPage: (selectedProduct) {
                      setState(
                        () => _newProductParams.productTypeId =
                            selectedProduct.id,
                      );
                      selectedProductType = selectedProduct;
                      _nextPage();
                    },
                    selectedProductType: selectedProductType,
                  ),
                  // NewBookProfile(
                  //   nextPage: _nextPage,
                  //   prevPage: _prevPage,
                  // ),
                  NewProductProfile(
                    nextPage: _nextPage,
                    prevPage: _prevPage,
                    onCreateProduct: _onCreateProduct,
                    selectedProductType: selectedProductType,
                    onCategoryChanged: (t) => _newProductParams.categoryId = t,
                    onCodeChanged: (t) => _newProductParams.code = t,
                    onIsActiveChanged: (value) =>
                        _newProductParams.isActive = value,
                    onIsOnlineChanged: (value) =>
                        _newProductParams.onlineSale = value,
                    onNameChanged: (t) => _newProductParams.name = t,
                    onReorderPointChanged: (t) =>
                        _newProductParams.reorderPoint = int.parse(t),
                    onUnitChanged: (t) => _newProductParams.unitId = t,
                    createProductParams: _newProductParams,
                  ),
                  // SetWarehouses(),
                  // ProductWarehouse(
                  //   nextPage: _nextPage,
                  //   prevPage: _prevPage,
                  // ),
                  // OverviewInformation(),
                ],
              ),
            ),
          ],
        ),
      );

  void _nextPage() => _pageController.nextPage(
      duration: const Duration(milliseconds: 280), curve: Curves.easeInOut);

  void _prevPage() => _pageController.previousPage(
      duration: const Duration(milliseconds: 240), curve: Curves.easeInOut);

  void _onCreateProduct(Product product) {
    _showSetWarehouseModal(product.id);
    widget.onCreateNewProduct(product);
  }

  void _showSetWarehouseModal(String productId) => showMaterialModalBottomSheet(
        context: context,
        builder: (context) => SetWarehouseModal(productId: productId),
      );
}
