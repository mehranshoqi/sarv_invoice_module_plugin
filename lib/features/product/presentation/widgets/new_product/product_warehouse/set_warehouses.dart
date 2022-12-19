import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/injection/di.dart';
import '../../../../../../core/ui/b_loading.dart';
import '../../../../../../core/ui/b_text_button.dart';
import '../../../../../../core/ui/b_toast.dart';
import '../../../../../../core/usecases/usecases.dart';
import '../../../../domain/entities/create_warehouse/response/warehouse/warehouse.dart';
import '../../../controllers/get_warehouses/cubit.dart';
import '../../../controllers/get_warehouses/state.dart';
import 'new_warehouse_form.dart';
import 'single_warehouse.dart';

class SetWarehouses extends StatefulWidget {
  const SetWarehouses({
    Key? key,
    required this.productId,
  }) : super(key: key);
  final String productId;

  @override
  State<SetWarehouses> createState() => _SetWarehousesState();
}

class _SetWarehousesState extends State<SetWarehouses> {
  List<Warehouse> _warehousesList = [];
  late GetWarehousesCubit _getWarehousesCubit;

  @override
  void initState() {
    super.initState();
    _getWarehousesCubit = sl<GetWarehousesCubit>();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(height: 12),
          _header(context),
          const SizedBox(height: 12),
          _items(),
        ],
      );

  Expanded _items() {
    return Expanded(
      child: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => _getWarehousesCubit..getWarehousesF(NoParams()),
          child: BlocConsumer<GetWarehousesCubit, GetWarehousesState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              error: (err) => BToast.success(err.errorReason!.first),
              done: (res) => setState(() => _warehousesList = res.data!.items),
            ),
            builder: (context, state) => state.maybeWhen(
              orElse: () => const BLoading(),
              done: (res) => Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 36,
                runSpacing: 20,
                children: [
                  for (Warehouse warehouse in _warehousesList)
                    // SingleWarehouse(warehouse),
                    // _sinlgeWarehouse(warehouse)
                    SingleWarehouse(
                      warehouse: warehouse,
                      index:
                          (_warehousesList.indexOf(warehouse) + 1).toString(),
                      productId: widget.productId,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) => Row(
        children: [
          Text(
            'اطلاعات کالا را در هر کدام از انبار های مورد نظر وارد کنید.',
            style: S.h5Bold(context).copyWith(fontWeight: FontWeight.w900),
          ),
          const Spacer(),
          BTextButton(
            label: '+ افزودن انبار',
            onTap: () => _showNewWarehouseForm(context),
          ),
          const SizedBox(width: 12),
        ],
      );

  void _showNewWarehouseForm(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => NewWarehouseForm(
          onCreateNewWarehouse: (newWarehouse) =>
              setState(() => _warehousesList.add(newWarehouse)),
        ),
      );
}
