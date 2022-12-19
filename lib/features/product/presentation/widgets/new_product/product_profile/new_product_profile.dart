import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/injection/di.dart';
import '../../../../../../core/ui/b_button.dart';
import '../../../../../../core/ui/b_image_picker.dart';
import '../../../../../../core/ui/b_input.dart';
import '../../../../../../core/ui/b_outline_button.dart';
import '../../../../../../core/ui/b_switch.dart';
import '../../../../../../core/ui/b_toast.dart';
import '../../../../domain/entities/create_product/params/params.dart';
import '../../../../domain/entities/create_product/response/product/product.dart';
import '../../../../domain/entities/create_product_type/response/product_type/product_type.dart';
import '../../../controllers/create_product/cubit.dart';
import '../../../controllers/create_product/state.dart';
import 'product_catrgory/product_categories.dart';
import 'product_unit/product_units.dart';

class NewProductProfile extends StatefulWidget {
  const NewProductProfile({
    Key? key,
    required this.nextPage,
    required this.prevPage,
    required this.selectedProductType,
    required this.onCategoryChanged,
    required this.onCodeChanged,
    required this.onIsActiveChanged,
    required this.onIsOnlineChanged,
    required this.onCreateProduct,
    required this.onNameChanged,
    required this.onReorderPointChanged,
    required this.onUnitChanged,
    required this.createProductParams,
  }) : super(key: key);
  final Function() nextPage, prevPage;
  final Function(Product product) onCreateProduct;
  final Function(String value) onNameChanged,
      onCodeChanged,
      onReorderPointChanged,
      onCategoryChanged,
      onUnitChanged;
  final Function(bool value) onIsOnlineChanged, onIsActiveChanged;
  final ProductType? selectedProductType;
  final CreateProductParams createProductParams;

  @override
  State<NewProductProfile> createState() => _NewProductProfileState();
}

class _NewProductProfileState extends State<NewProductProfile> {
  final TextEditingController selectedCategoryNameController =
          TextEditingController(),
      selectedUnitNameController = TextEditingController();
  late CreateProductCubit _createProductCubit;

  @override
  void initState() {
    _createProductCubit = sl<CreateProductCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              BInput(
                onChange: widget.onNameChanged,
                expanded: true,
                placeholder: 'نام کالا',
              ),
              const SizedBox(height: 36),
              _categoryAndUnit(context),
              const SizedBox(height: 36),
              _reorderPointAndProductCode(context),
              const SizedBox(height: 36),
              _imageAndOnlineSaleAndActivate(context),
              const SizedBox(height: 80),
              _createButton(context),
              const SizedBox(height: 36),
            ],
          ),
        ),
      );

  Widget _reorderPointAndProductCode(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: BInput(
              onChange: widget.onCodeChanged,
              expanded: true,
              placeholder: 'کد کالا',
            ),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: BInput(
              onChange: widget.onReorderPointChanged,
              expanded: true,
              placeholder: 'هشدار موجودی',
            ),
          ),
        ],
      );

  Widget _categoryAndUnit(BuildContext context) => Row(
        children: [
          _category(context),
          const SizedBox(width: 32),
          _unit(context),
        ],
      );

  Widget _category(BuildContext context) => Expanded(
        child: Stack(
          children: [
            BInput(
              onChange: (t) {},
              expanded: true,
              placeholder: 'دسته بندی کالا',
              controller: selectedCategoryNameController,
            ),
            Positioned.fill(
              child: InkWell(onTap: () => _showProductCategories(context)),
            ),
          ],
        ),
      );

  Widget _unit(BuildContext context) => Expanded(
        child: Stack(
          children: [
            BInput(
              onChange: (t) {},
              expanded: true,
              placeholder: 'واحد شمارش',
              controller: selectedUnitNameController,
            ),
            Positioned.fill(
              child: InkWell(
                onTap: () => _showProductUnits(context),
              ),
            ),
          ],
        ),
      );

  Widget _imageAndOnlineSaleAndActivate(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                _onlineSale(context),
                const SizedBox(height: 48),
                _activated(context),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: VerticalDivider(),
              height: 120,
            ),
          ),
          _imagePicker(context),
        ],
      );

  Widget _onlineSale(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('فروش آنلاین'),
          BSwitch(
            onChange: widget.onIsOnlineChanged,
          ),
        ],
      );

  Widget _activated(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('فعال'),
          BSwitch(
            onChange: widget.onIsActiveChanged,
          ),
        ],
      );

  Widget _imagePicker(BuildContext context) => Expanded(
        child: Align(
          alignment: Alignment.centerLeft,
          child: BImagePicker(
            onSelectImage: (imagePath) {}, // Todo.
            size: 188,
            info: 'عکس کالا',
          ),
        ),
      );

  void _showProductCategories(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => ProductCategories(
          selectedProductType: widget.selectedProductType!,
          onSelectCategory: (selectedCategory) {
            setState(() =>
                selectedCategoryNameController.text = selectedCategory.name);
            widget.onCategoryChanged(selectedCategory.id);
          },
        ),
      );

  void _showProductUnits(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => ProductUnits(
          onSelectProductUnit: (selectedProductUnit) {
            setState(() =>
                selectedUnitNameController.text = selectedProductUnit.name);
            widget.onUnitChanged(selectedProductUnit.id);
          },
        ),
      );

  Widget _createButton(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BOutlineButton(
            label: 'انصراف',
            onTap: () => Navigator.pop(context),
            minWidth: 340,
          ),
          const SizedBox(width: 24),
          BlocProvider(
            create: (context) => _createProductCubit,
            child: BlocConsumer<CreateProductCubit, CreateProductState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                done: (res) {
                  Navigator.pop(context);
                  widget.onCreateProduct(res.data!.product);
                },
                error: (err) => BToast.success(err.errorReason!.first),
              ),
              builder: (context, state) => BButton(
                minWidth: 340,
                label: 'ساخت کالا',
                onTap: _createProduct,
                loading: state is CreateProductStateLoading,
              ),
            ),
          ),
        ],
      );

  void _createProduct() =>
      _createProductCubit.createProductF(widget.createProductParams);
}
