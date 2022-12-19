import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/global.dart';
import '../../../../core/entities/products_list_header_cell.dart';
import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_loading.dart';
import '../../domain/entities/create_product/response/product/product.dart';
import '../../domain/entities/get_products/params/params.dart';
import '../controllers/get_products/cubit.dart';
import '../controllers/get_products/state.dart';

class ProductsTable extends StatefulWidget {
  const ProductsTable({
    Key? key,
    required this.onAddProduct,
  }) : super(key: key);

  final Function(Product product) onAddProduct;

  @override
  State<ProductsTable> createState() => ProductsTableState();
}

class ProductsTableState extends State<ProductsTable> {
  final ScrollController _scrollController = ScrollController();
  late GetProductsCubit _getProductsCubit;
  final List<Product> _productsList = [];

  @override
  void initState() {
    _getProductsCubit = sl<GetProductsCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Expanded(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _headerList(context),
                Expanded(
                  child: SingleChildScrollView(
                    child: BlocProvider(
                      create: (context) => _getProductsCubit
                        ..getProductsF(
                          GetProductsParams(search: ''),
                        ),
                      child: BlocConsumer<GetProductsCubit, GetProductsState>(
                        listener: (context, state) => state.maybeWhen(
                          orElse: () => null,
                          done: (res) => setState(
                            () => _productsList.addAll(res.data!.items),
                          ),
                        ),
                        builder: (context, state) => state.maybeWhen(
                          orElse: () => const BLoading(),
                          done: (res) => Column(
                            children: [
                              for (Product product in _productsList)
                                _dataRow(
                                  context,
                                  product,
                                  res.data!.items.indexOf(product),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // ),
      );

  Widget _dataRow(BuildContext context, Product product, int indexOf) =>
      Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        color: Colors.white.withOpacity(.5),
        height: 32,
        child: Row(
          children: [
            // Todo - if(G.productsListHeaderCells.first.isActive)
            _dataCell(
              context,
              G.productsListHeaderCells.first,
              value: indexOf.toString(),
            ),
            _dataCell(
              context,
              G.productsListHeaderCells[1],
              value: product.productTypeId,
            ),
            _dataCell(
              context,
              G.productsListHeaderCells[2],
              value: product.isActive ? 'فعال' : 'غیرفعال',
            ),
            _dataCell(
              context,
              G.productsListHeaderCells[3],
              value: product.categoryId,
            ),
            _dataCell(
              context,
              G.productsListHeaderCells[4],
              value: product.code,
            ),
            _dataCell(
              context,
              G.productsListHeaderCells[5],
              value: product.name,
            ),
            _dataCell(
              context,
              G.productsListHeaderCells[6],
              value: product.reorderPoint.toString(),
            ),
            _dataCell(
              context,
              G.productsListHeaderCells[7],
              value: '',
              operation: true,
            ),
          ],
        ),
      );

  Widget _dataCell(
    BuildContext context,
    ProductsListHeaderCell headerCell, {
    bool header = false,
    bool operation = false,
    String value = '',
  }) =>
      Container(
        width: headerCell.width,
        margin: const EdgeInsets.symmetric(horizontal: 1),
        alignment: headerCell.center ? Alignment.center : Alignment.center,
        child: operation
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 17,
                      color: S.activeTextColor700(context),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      size: 17,
                      color: S.activeTextColor700(context),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.copy,
                      size: 17,
                      color: S.activeTextColor700(context),
                    ),
                  ),
                ],
              )
            : Text(
                header ? headerCell.title : value,
                style: S.t(context).bodyText2!.copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: header ? FontWeight.bold : FontWeight.normal,
                    ),
              ),
      );

  Widget _headerList(BuildContext context) => SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          color: S.activeTextColor100(context),
          height: 32,
          child: Row(
            children: [
              for (ProductsListHeaderCell headerCell
                  in G.productsListHeaderCells)
                _dataCell(context, headerCell, header: true)
            ],
          ),
        ),
      );

  void addNewProductToTable(Product newProduct) => setState(
        () => _productsList.add(newProduct),
      );
}
