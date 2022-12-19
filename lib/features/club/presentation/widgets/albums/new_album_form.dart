import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../core/ui/b_button.dart';
import '../../../../../core/ui/b_input.dart';
import '../../../../../core/ui/b_list_row_item.dart';
import '../../../../../core/ui/b_outline_button.dart';
import '../../../../../core/ui/b_toast.dart';
import '../../../../../core/ui/close_button.dart';
import '../../../../product/domain/entities/create_product/response/product/product.dart';
import '../../../../product/domain/entities/get_products/params/params.dart';
import '../../../../product/presentation/controllers/get_products/cubit.dart';
import '../../../../product/presentation/controllers/get_products/state.dart';
import '../../../domain/entities/create_products_album/params/params.dart';
import '../../../domain/entities/create_products_album/response/products_album/products_album.dart';
import '../../controllers/create_products_album/cubit.dart';
import '../../controllers/create_products_album/state.dart';
import 'select_product_category_dialog.dart';
import 'select_product_type_dialog.dart';

class NewAlbumForm extends StatefulWidget {
  const NewAlbumForm({
    Key? key,
    required this.onCreateNewAlbum,
  }) : super(key: key);

  final Function(ProductsAlbum newAlbum) onCreateNewAlbum;
  @override
  State<NewAlbumForm> createState() => _NewAlbumFormState();
}

class _NewAlbumFormState extends State<NewAlbumForm> {
  final GetProductsParams _productsParams = GetProductsParams(search: '');
  late CreateProductsAlbumCubit _createProductsAlbumCubit;
  late GetProductsCubit _productsCubit;
  final TextEditingController _typeController = TextEditingController(),
      _categoryController = TextEditingController();
  final PageController _pageViewController = PageController();
  List<Product> _products = [], _selectedProducts = [];

  int activePageIndex = 0;
  final CreateProductsAlbumParams _createProductsAlbumParams =
      CreateProductsAlbumParams(
    '',
    const [],
  );

  @override
  void initState() {
    _createProductsAlbumCubit = sl<CreateProductsAlbumCubit>();
    _productsCubit = sl<GetProductsCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        height: 1000,
        width: 2000,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CloseButtonWidget(),
                  const Spacer(),
                  Text(
                    'ساخت آلبوم',
                    style: S
                        .t(context)
                        .headline5!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  const SizedBox(width: 40),
                ],
              ),
              const SizedBox(height: 32),
              Expanded(
                child: PageView(
                  children: [
                    //* select products.
                    Column(
                      children: [
                        _filters(context),
                        const SizedBox(height: 20),
                        _productsList(context),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                    //* pick album name.
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'نام آلبوم وارد کنید.',
                          style: S.bodyText1Bold(context),
                        ),
                        const SizedBox(height: 20),
                        BInput(
                          onChange: (t) =>
                              _createProductsAlbumParams.name = t.trim(),
                          placeholder: 'نام آلبوم',
                          width: 320,
                        ),
                      ],
                    ),
                  ],
                  controller: _pageViewController,
                  onPageChanged: (idx) => setState(() => activePageIndex = idx),
                ),
              ),
              _pageControllers(context),
            ],
          ),
        ),
      );

  Widget _productsList(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (Product product in _products)
                _singleProductListItem(
                    context, product, _selectedProducts.contains(product))
            ],
          ),
        ),
      );

  Widget _singleProductListItem(
          BuildContext context, Product product, bool selected) =>
      Stack(
        children: [
          BRowListItem(
            child: Expanded(
              child: Row(
                children: [
                  Text(product.name),
                  const Spacer(flex: 2),
                  SizedBox(
                    width: 110,
                    child: Text(
                      product.code,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 120),
                ],
              ),
            ),
            onTap: () {},
            index: 0,
            showArrow: false,
          ),
          Positioned(
            left: 20,
            top: 12,
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(height: 44, width: 90),
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    selected ? Colors.white : S.primary(context),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: S.primary(context)),
                    ),
                  ),
                ),
                child: Text(
                  selected ? 'حذف' : 'انتخاب',
                  style: S.captionBold(context).copyWith(
                      color: selected ? S.primary(context) : Colors.white),
                ),
                onPressed: () {
                  selected
                      ? _selectedProducts.remove(product)
                      : _selectedProducts.add(product);
                  setState(() {});
                },
              ),
            ),
          ),
        ],
      );

  Widget _filters(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Text(
              'جستجو بر اساس ',
              style:
                  S.t(context).bodyText1!.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(width: 28),
            BlocProvider(
              create: (context) =>
                  _productsCubit..getProductsF(_productsParams),
              child: BlocListener<GetProductsCubit, GetProductsState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  done: (res) => setState(() => _products = res.data!.items),
                  error: (err) => BToast.success(err.errorReason!.first),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BInput(
                      onChange: (t) {
                        _productsParams.search = t;
                        _getProducts();
                      },
                      placeholder: 'جستجو نام و کد کالا',
                    ),
                    const SizedBox(width: 24),
                    Stack(
                      children: [
                        BInput(
                          onChange: (t) {},
                          placeholder: 'نوع کالا',
                          controller: _typeController,
                        ),
                        Positioned.fill(
                          child: InkWell(
                            onTap: () => _showTypesDialOg(context),
                            child: Container(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 24),
                    if (_productsParams.productTypeId?.isNotEmpty ?? false)
                      Stack(
                        children: [
                          BInput(
                            onChange: (t) {},
                            placeholder: 'دسته بندی کالا',
                            controller: _categoryController,
                          ),
                          Positioned.fill(
                            child: InkWell(
                              onTap: () => _showCategoriesModal(context),
                              child: Container(color: Colors.transparent),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget _pageControllers(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: activePageIndex == 0 ? 0 : 1,
            child: BOutlineButton(
              label: 'مرحله قبل',
              minWidth: 230,
              onTap: _prevPage,
            ),
          ),
          const SizedBox(width: 32),
          BlocProvider(
            create: (context) => _createProductsAlbumCubit,
            child: BlocConsumer<CreateProductsAlbumCubit,
                CreateProductsAlbumState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (err) => BToast.success(err.errorReason!.first),
                done: (res) {
                  widget.onCreateNewAlbum(res.data!.data);
                  Navigator.pop(context);
                },
              ),
              builder: (context, state) => BButton(
                minWidth: 230,
                label: activePageIndex == 0 ? 'بعدی' : 'ذخیره',
                onTap: () =>
                    activePageIndex == 0 ? _nextPage() : _createAlbum(),
                loading: state is CreateProductsAlbumStateLoading,
              ),
            ),
          ),
        ],
      );

  _createAlbum() {
    _createProductsAlbumParams.products =
        _selectedProducts.map((p) => p.id).toList();
    _createProductsAlbumCubit.createProductsAlbum(_createProductsAlbumParams);
  }

  void _nextPage() => _pageViewController.nextPage(
      duration: const Duration(milliseconds: 400), curve: Curves.easeIn);

  void _prevPage() => _pageViewController.previousPage(
      duration: const Duration(milliseconds: 400), curve: Curves.easeIn);

  void _getProducts() {
    _productsCubit.getProductsF(_productsParams);
  }

  void _showTypesDialOg(BuildContext context) => showDialog(
        context: context,
        builder: (context) => SelectProductTypeDialog(
          onSelectType: (type) {
            _typeController.text = type.name;
            _productsParams.productTypeId = type.id;
            _getProducts();
          },
        ),
      );

  void _showCategoriesModal(BuildContext context) => showDialog(
        context: context,
        builder: (context) => SelectProductCategoryDialog(
          onSelectCategory: (selectedCategory) {
            _categoryController.text = selectedCategory.name;
            _productsParams.categoryId = selectedCategory.id;
            _getProducts();
          },
          selectedProductTypeId: _productsParams.productTypeId!,
        ),
      );
}
