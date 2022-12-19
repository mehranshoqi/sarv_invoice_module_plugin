import '../../../../../../../core/ui/b_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/injection/di.dart';
import '../../../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../../../core/ui/b_button.dart';
import '../../../../../../../core/ui/b_toast.dart';
import '../../../../../../../core/ui/close_button.dart';
import '../../../../../../../core/usecases/usecases.dart';
import '../../../../../domain/entities/create_unit/response/product_unit/product_unit.dart';
import '../../../../controllers/get_units/cubit.dart';
import '../../../../controllers/get_units/state.dart';
import 'new_product_unit_form.dart';
import 'single_product_unit.dart';

class ProductUnits extends StatefulWidget {
  const ProductUnits({
    Key? key,
    required this.onSelectProductUnit,
  }) : super(key: key);

  final Function(ProductUnit selectedProductUnit) onSelectProductUnit;

  @override
  State<ProductUnits> createState() => _ProductUnitsState();
}

class _ProductUnitsState extends State<ProductUnits> {
  late GetUnitsCubit _getUnitsCubit;
  List<ProductUnit> _unitsList = [];

  @override
  void initState() {
    _getUnitsCubit = sl<GetUnitsCubit>();
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
                  label: '+ واحد جدید',
                  onTap: () => _showNewProductCategoryForm(context),
                ),
              ],
            ),
            const SizedBox(height: 48),
            _units(context),
            const SizedBox(height: 12),
          ],
        ),
      );

  Widget _units(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => _getUnitsCubit..getUnitsF(NoParams()),
            child: BlocConsumer<GetUnitsCubit, GetUnitsState>(
              listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  error: (err) => BToast.success(err.errorReason!.first),
                  done: (res) =>
                      setState(() => _unitsList = res.data!.productUnits)),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const BLoading(),
                error: (err) => Text('err - todo.'),
                done: (res) => Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.spaceBetween,
                  spacing: 28,
                  runSpacing: 24,
                  children: [
                    for (ProductUnit unit in _unitsList)
                      SingleProductUnit(
                        productUnit: unit,
                        onSelectProductUnit: widget.onSelectProductUnit,
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
        builder: (BuildContext context) => NewProductUnitForm(
          onCreateNewUnit: (newUnit) => setState(() => _unitsList.add(newUnit)),
        ),
      );
}
