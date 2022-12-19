import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/config/theme/colors.dart';
import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/ui/b_button.dart';
import '../../../../../../core/ui/b_input.dart';
import '../../../../../../core/ui/b_outline_button.dart';
import '../../../../../../core/ui/b_toast.dart';
import '../../../../../product/presentation/widgets/new_product/warehouses_modal.dart';
import '../../../../../product/presentation/widgets/products_search_dialog.dart';
import '../../../../domain/entities/create_buy_invoice/params/buy_invoice_product/buy_invoice_product.dart';

class AddProductToInvoiceForm extends StatefulWidget {
  const AddProductToInvoiceForm({
    Key? key,
    required this.onAddNewInvoiceProduct,
  }) : super(key: key);
  final Function(BuyInvoiceProduct newInvoiceProduct) onAddNewInvoiceProduct;

  @override
  State<AddProductToInvoiceForm> createState() =>
      _AddProductToInvoiceFormState();
}

class _AddProductToInvoiceFormState extends State<AddProductToInvoiceForm> {
  BuyInvoiceProduct _newInvoiceProduct =
      BuyInvoiceProduct('', '', 0, 0, '', '');

  final TextEditingController productIdController = TextEditingController(),
      countController = TextEditingController(),
      priceController = TextEditingController(),
      descriptionController = TextEditingController(),
      warehouseIdController = TextEditingController(),
      totalPriceController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColors.oSecondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.center,
          spacing: 18,
          runSpacing: 20,
          children: [
            Row(
              children: [
                _productCode(context),
                const SizedBox(width: 18),
                _warehouse(context),
              ],
            ),
            BInput(
              onChange: (t) => _onCountChanged(t),
              placeholder: 'تعداد',
              inputType: TextInputType.number,
              expanded: true,
              controller: countController,
            ),
            BInput(
              onChange: (t) => _onPriceChanged(t),
              expanded: true,
              placeholder: 'في',
              inputType: TextInputType.number,
              controller: priceController,
            ),
            _totalPrice(context),
            // BInput(
            //   onChange: (t) {},
            //   expanded: true,
            //   height: 80,
            //   placeholder: 'توضیحات',
            //   controller: descriptionController,
            // ),
            const SizedBox(height: 4),
            _warehouseCount(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: BOutlineButton(
                    label: 'پاک کردن فرم',
                    onTap: () => _clearForm(context),
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: BButton(
                    label: 'افزودن کالا',
                    minWidth: 35.w,
                    onTap: () => _formIsValid() ? _addProductToInvoice() : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget _warehouseCount(BuildContext context) {
    return Row(
      children: [
        Text(
          'آخرین قیمت خرید' '  ' '12,300',
          style: S.t(context).caption,
        ),
        const SizedBox(width: 24),
        Text(
          'موجودی فعلی در انبار ها' '  ' '24',
          style: S.t(context).caption,
        ),
      ],
    );
  }

  Widget _productCode(BuildContext context) => Expanded(
        child: Stack(
          children: [
            BInput(
              onChange: (t) => _newInvoiceProduct.productId = t,
              placeholder: 'کد کالا',
              controller: productIdController,
            ),
            Positioned(
              left: 0,
              child: IconButton(
                onPressed: () => _showProductsSearchModal(context),
                icon: Icon(
                  Iconsax.search_normal4,
                  color: S.activeTextColor600(context),
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      );

  Widget _warehouse(BuildContext context) => Expanded(
        child: Stack(
          children: [
            BInput(
              onChange: (t) => _newInvoiceProduct.warehouseId = t,
              placeholder: 'انبار',
              controller: warehouseIdController,
            ),
            Positioned.fill(
              left: 0,
              child: InkWell(
                onTap: () => _showWarehousesDialog(context),
              ),
            ),
          ],
        ),
      );

  void _showProductsSearchModal(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => ProductsSearchDialog(
          onSelectProduct: (selectedProduct) {
            _newInvoiceProduct.productId = selectedProduct.id;
            _newInvoiceProduct.name = selectedProduct.name;
            productIdController.text = selectedProduct.name;
          },
        ),
      );

  Widget _totalPrice(BuildContext context) => Stack(
        children: [
          BInput(
            onChange: (t) {},
            expanded: true,
            placeholder: 'جمع کل',
            controller: totalPriceController,
          ),
          Positioned.fill(child: Container(color: Colors.transparent)),
        ],
      );

  bool _formIsValid() {
    if (_newInvoiceProduct.productId.isEmpty) {
      BToast.success('کد کالا رو وارد کن :/');
      return false;
    }
    if (_newInvoiceProduct.warehouseId.isEmpty) {
      BToast.success('انبار رو وارد کن :/');
      return false;
    }
    return true;
  }

  void _addProductToInvoice() {
    _dismissKeybord(context);
    widget.onAddNewInvoiceProduct(_newInvoiceProduct);
    _newInvoiceProduct = BuyInvoiceProduct(
      '',
      _newInvoiceProduct.warehouseId,
      0,
      0,
      '',
      '',
    );
    _clearForm(context, clearWarehouse: false);
  }

  void _dismissKeybord(BuildContext context) =>
      FocusScope.of(context).unfocus();

  void _onCountChanged(String t) {
    try {
      _newInvoiceProduct.count = int.parse(t);
    } catch (err) {}
    _updateTotalPrice();
  }

  void _onPriceChanged(String t) {
    _newInvoiceProduct.buyPrice = int.parse(t);
    _updateTotalPrice();
  }

  void _updateTotalPrice() {
    totalPriceController.text =
        (_newInvoiceProduct.count * _newInvoiceProduct.buyPrice).toString();
    _newInvoiceProduct.totalPrice = int.parse(totalPriceController.text);
  }

  void _clearForm(BuildContext context, {bool clearWarehouse = true}) {
    productIdController.text = countController.text = priceController.text =
        descriptionController.text = totalPriceController.text = '';
    if (clearWarehouse) warehouseIdController.text = '';
  }

  void _showWarehousesDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => WarehousesModal(
          onSelectWarehouse: (selectedWarehouse) {
            warehouseIdController.text = selectedWarehouse.name;
            _newInvoiceProduct.warehouseId = selectedWarehouse.id;
          },
        ),
      );
}
