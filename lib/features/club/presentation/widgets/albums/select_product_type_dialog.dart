import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../core/ui/b_input.dart';
import '../../../../../core/ui/close_button.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../../product/domain/entities/create_product_type/response/product_type/product_type.dart';
import '../../../../product/presentation/controllers/get_product_types/cubit.dart';
import '../../../../product/presentation/controllers/get_product_types/state.dart';

class SelectProductTypeDialog extends StatefulWidget {
  const SelectProductTypeDialog({Key? key, required this.onSelectType})
      : super(key: key);
  final Function(ProductType type) onSelectType;

  @override
  State<SelectProductTypeDialog> createState() =>
      _SelectProductTypeDialogState();
}

class _SelectProductTypeDialogState extends State<SelectProductTypeDialog> {
  late GetProductTypesCubit _typesCubit;
  List<ProductType> _types = [], _filteredList = [];

  @override
  void initState() {
    super.initState();
    _typesCubit = sl<GetProductTypesCubit>();
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
              create: (context) => _typesCubit..getProductTypesF(NoParams()),
              child: BlocConsumer<GetProductTypesCubit, GetProductTypesState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  done: (res) => setState(() {
                    _types = _filteredList = res.data!.productTypes;
                  }),
                ),
                builder: (context, state) => BInput(
                  expanded: true,
                  onChange: (t) {
                    List<ProductType> temp = [];
                    for (var type in _types)
                      if (type.name.contains(t)) temp.add(type);

                    _filteredList = temp;
                    setState(() {});
                  },
                  placeholder: 'جستجو در میان نوع کالا',
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
              for (ProductType type in _filteredList) _singleItem(type),
            ],
          ),
        ),
      );

  Widget _singleItem(ProductType type) => InkWell(
        onTap: () {
          widget.onSelectType(type);
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: S.activeTextColor100(context),
              ),
            ),
          ),
          child: Text(type.name),
        ),
      );
}
