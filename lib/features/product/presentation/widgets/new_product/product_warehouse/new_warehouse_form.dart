import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/helpers/styles.dart';
import '../../../../../../../core/injection/di.dart';
import '../../../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../../../core/ui/b_button.dart';
import '../../../../../../../core/ui/b_toast.dart';
import '../../../../../../core/ui/b_input.dart';
import '../../../../domain/entities/create_warehouse/params/params.dart';
import '../../../../domain/entities/create_warehouse/response/warehouse/warehouse.dart';
import '../../../controllers/create_warehouse/cubit.dart';
import '../../../controllers/create_warehouse/state.dart';

class NewWarehouseForm extends StatefulWidget {
  const NewWarehouseForm({
    Key? key,
    required this.onCreateNewWarehouse,
  }) : super(key: key);
  final Function(Warehouse warehouse) onCreateNewWarehouse;

  @override
  State<NewWarehouseForm> createState() => _NewWarehouseFormState();
}

class _NewWarehouseFormState extends State<NewWarehouseForm> {
  late CReateWarehouseCubit _cReateWarehouseCubit;
  late CreateWarehouseParams _createWarehouseParams;

  @override
  void initState() {
    _cReateWarehouseCubit = sl<CReateWarehouseCubit>();
    _createWarehouseParams = CreateWarehouseParams(0, '', '', '', '', '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        showCloseButton: true,
        width: 1300,
        height: 800,
        child: Column(
          children: [
            const Spacer(flex: 2),
            Text(
              'ساخت انبار جدید',
              style: S.h5Bold(context).copyWith(fontWeight: FontWeight.w900),
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: BInput(
                    onChange: (t) => _createWarehouseParams.name = t,
                    expanded: true,
                    placeholder: 'نام',
                  ),
                ),
                const SizedBox(width: 28),
                Expanded(
                  child: BInput(
                    onChange: (t) =>
                        _createWarehouseParams.number = int.parse(t),
                    expanded: true,
                    placeholder: 'شماره انبار',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: BInput(
                    onChange: (t) => _createWarehouseParams.manager = t,
                    expanded: true,
                    placeholder: 'مدیر',
                  ),
                ),
                const SizedBox(width: 28),
                Expanded(
                  child: BInput(
                    onChange: (t) => _createWarehouseParams.phone = t,
                    expanded: true,
                    placeholder: 'تلفن',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: BInput(
                    onChange: (t) => _createWarehouseParams.address = t,
                    expanded: true,
                    placeholder: 'آدرس',
                    height: 100,
                    maxLength: 256,
                  ),
                ),
                const SizedBox(width: 28),
                Expanded(
                  child: BInput(
                    onChange: (t) => _createWarehouseParams.description = t,
                    expanded: true,
                    placeholder: 'توضیحات',
                    height: 100,
                    maxLength: 256,
                  ),
                ),
              ],
            ),
            const Spacer(),
            BlocProvider(
              create: (context) => _cReateWarehouseCubit,
              child: BlocConsumer<CReateWarehouseCubit, CreateWarehouseState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  error: (err) => BToast.success(err.errorReason!.first),
                  done: (res) {
                    widget.onCreateNewWarehouse(res.data!.warehouse);
                    Navigator.pop(context);
                    return;
                  },
                ),
                builder: (context, state) => BButton(
                  label: 'ثبت',
                  onTap: _createWarehouse,
                  loading: state is CreateWarehouseStateLoading,
                  minWidth: 240,
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      );

  void _createWarehouse() async =>
      _cReateWarehouseCubit.createWarehouseFP(_createWarehouseParams);
}
