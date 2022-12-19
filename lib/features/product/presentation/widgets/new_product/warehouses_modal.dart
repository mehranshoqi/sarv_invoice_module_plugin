import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../core/ui/b_list_row_item.dart';
import '../../../../../core/ui/b_loading.dart';
import '../../../../../core/ui/b_toast.dart';
import '../../../../../core/ui/close_button.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/entities/create_warehouse/response/warehouse/warehouse.dart';
import '../../controllers/get_warehouses/cubit.dart';
import '../../controllers/get_warehouses/state.dart';

class WarehousesModal extends StatefulWidget {
  const WarehousesModal({
    Key? key,
    required this.onSelectWarehouse,
  }) : super(key: key);
  final Function(Warehouse warehouse) onSelectWarehouse;

  @override
  State<WarehousesModal> createState() => _WarehousesModalState();
}

class _WarehousesModalState extends State<WarehousesModal> {
  late GetWarehousesCubit _getWarehousesCubit;
  final List<Warehouse> _warehousesList = [];

  @override
  void initState() {
    super.initState();
    _getWarehousesCubit = sl<GetWarehousesCubit>();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        width: 1300,
        height: 800,
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CloseButtonWidget(),
                Text(
                  'انتخاب انبار',
                  style: S
                      .t(context)
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 48),
            _warehouses(context),
          ],
        ),
      );

  Widget _warehouses(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) =>
                _getWarehousesCubit..getWarehousesF(NoParams()),
            child: BlocConsumer<GetWarehousesCubit, GetWarehousesState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (err) => BToast.success(err.errorReason!.first),
                done: (res) =>
                    setState(() => _warehousesList.addAll(res.data!.items)),
              ),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const BLoading(),
                done: (_) => Column(
                  children: [
                    for (Warehouse warehouse in _warehousesList)
                      _singleWarehouse(warehouse),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _singleWarehouse(Warehouse warehouse) => BRowListItem(
        child: Expanded(
          child: Row(
            children: [
              Container(
                alignment: Alignment.centerRight,
                width: 90,
                child: Text(
                  warehouse.name,
                  style: S
                      .t(context)
                      .caption!
                      .copyWith(color: S.activeTextColor(context)),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  warehouse.phone,
                  overflow: TextOverflow.ellipsis,
                  style: S.t(context).caption,
                ),
              ),
            ],
          ),
        ),
        showArrow: false,
        onTap: () {
          widget.onSelectWarehouse(warehouse);
          Navigator.pop(context);
        },
        index: _warehousesList.indexOf(warehouse),
      );
}
