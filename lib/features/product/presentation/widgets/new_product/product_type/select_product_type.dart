import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/injection/di.dart';
import '../../../../../../core/ui/b_loading.dart';
import '../../../../../../core/ui/b_toast.dart';
import '../../../../../../core/usecases/usecases.dart';
import '../../../../domain/entities/create_product_type/response/product_type/product_type.dart';
import '../../../controllers/get_product_types/cubit.dart';
import '../../../controllers/get_product_types/state.dart';
import 'product_type.dart';

// ignore: must_be_immutable
class SelectProductType extends StatefulWidget {
  SelectProductType({
    Key? key,
    required this.nextPage,
    required this.selectedProductType,
    // required this.showBookProfile,
  }) : super(key: key);
  final Function(ProductType selectedProductType) nextPage;
  // final Function() showBookProfile;
  ProductType? selectedProductType;

  @override
  State<SelectProductType> createState() => _SelectProductTypeState();
}

class _SelectProductTypeState extends State<SelectProductType> {
  late GetProductTypesCubit _getProductTypesCubit;
  List<ProductType> _typesList = [];

  @override
  void initState() {
    super.initState();
    _getProductTypesCubit = sl<GetProductTypesCubit>();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(12, 28, 12, 0),
        child: _productTypes(context),
      );

  Widget _productTypes(BuildContext context) => Center(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) =>
                _getProductTypesCubit..getProductTypesF(NoParams()),
            child: BlocConsumer<GetProductTypesCubit, GetProductTypesState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (err) => BToast.success(err.errorReason!.first),
                done: (res) => setState(
                  () => _typesList = res.data!.productTypes,
                ),
              ),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const BLoading(),
                done: (res) {
                  const fakeType = ProductType('', '', '', 0); // Todo.
                  return Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    spacing: 28,
                    runSpacing: 30,
                    children: [
                      for (ProductType productType in _typesList)
                        ProductTypeWidget(
                          nextPage: widget.nextPage,
                          selected:
                              widget.selectedProductType?.id == productType.id,
                          productType: productType,
                          onNewTypeCreated: (_) {},
                        ),
                      ProductTypeWidget(
                        nextPage: widget.nextPage,
                        productType: fakeType,
                        createNewTypeButton: true,
                        selected: false,
                        onNewTypeCreated: (newType) => setState(
                          () => _typesList.add(newType),
                        ),
                      )
                    ],
                  );
                },
                error: (err) => const Text('Error'), // Todo.
              ),
            ),
          ),
        ),
      );
}
