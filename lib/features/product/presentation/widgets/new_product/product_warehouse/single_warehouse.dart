import '../../../../../../core/ui/b_toast.dart';
import '../../../controllers/create_stock/cubit.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/injection/di.dart';
import '../../../../../../core/ui/b_button.dart';
import '../../../../../../core/ui/b_input.dart';
import '../../../../domain/entities/create_stock/params/params.dart';
import '../../../../domain/entities/create_warehouse/response/warehouse/warehouse.dart';
import '../../../controllers/create_stock/state.dart';

class SingleWarehouse extends StatefulWidget {
  const SingleWarehouse({
    Key? key,
    required this.warehouse,
    required this.index,
    required this.productId,
  }) : super(key: key);
  final Warehouse warehouse;
  final String index, productId;

  @override
  State<SingleWarehouse> createState() => _SingleWarehouseState();
}

class _SingleWarehouseState extends State<SingleWarehouse> {
  final CreateStockParams _createStockParams =
      CreateStockParams(0, 0, 0, '', '');
  late CreateStockCubit _createStockCubit;

  @override
  void initState() {
    super.initState();
    _createStockCubit = sl<CreateStockCubit>();
    _createStockParams.productId = widget.productId;
    _createStockParams.warehouseId = widget.warehouse.id;
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: S.activeTextColor100(context)),
          ),
        ),
        child: ExpandableNotifier(
          child: ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
                iconColor: S.activeTextColor800(context),
                iconSize: 18,
                iconPadding: EdgeInsets.zero,
              ),
              header: _singeWarehouseHeader(widget.warehouse),
              collapsed: const SizedBox(),
              expanded: _singleWarehouseForm(widget.warehouse),
              builder: (_, collapsed, expanded) =>
                  Expandable(collapsed: collapsed, expanded: expanded),
            ),
          ),
        ),
      );

  Widget _singeWarehouseHeader(Warehouse warehouse) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          children: [
            const SizedBox(width: 24),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: S.activeTextColor100(context),
              ),
              padding: const EdgeInsets.all(12),
              child: Text(widget.index),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 140,
              child: Text(
                warehouse.name,
                style: S.bodyText1Bold(context),
              ),
            ),
            const SizedBox(width: 28),
            SizedBox(
              width: 140,
              child: Text(
                warehouse.phone,
                style: S.bodyText1Bold(context),
              ),
            ),
            const SizedBox(width: 28),
            SizedBox(
              width: 190,
              child: Text(
                warehouse.address,
                overflow: TextOverflow.ellipsis,
                style: S.bodyText1Bold(context),
              ),
            ),
          ],
        ),
      );

  Widget _singleWarehouseForm(Warehouse warehouse) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                BInput(
                  placeholder: 'قفسه',
                  onChange: (t) {},
                ),
                const SizedBox(width: 24),
                BInput(
                  placeholder: 'راهرو',
                  onChange: (t) {},
                ),
                const SizedBox(width: 24),
                BInput(
                  placeholder: 'تعداد',
                  onChange: (t) => _createStockParams.count = int.parse(t),
                ),
                const SizedBox(width: 24),
                BInput(
                  placeholder: 'قیمت خرید',
                  onChange: (t) => _createStockParams.buyPrice = int.parse(t),
                ),
                const SizedBox(width: 24),
                BInput(
                  placeholder: 'قیمت فروش',
                  onChange: (t) => _createStockParams.sellPrice = int.parse(t),
                ),
                const SizedBox(width: 24),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // BOutlineButton(
              //   label: 'لغو',
              //   onTap: () {},
              //   minWidth: 170,
              // ),
              const SizedBox(width: 24),
              BlocProvider(
                create: (context) => _createStockCubit,
                child: BlocConsumer<CreateStockCubit, CreateStockState>(
                  listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    done: (_) => BToast.success('اطلاعات با موفقیت ثبت شد.'),
                    error: (err) => BToast.success(err.errorReason!.first),
                  ),
                  builder: (context, state) => BButton(
                    label: 'ثبت',
                    onTap: () =>
                        _createStockCubit.createStockF(_createStockParams),
                    minWidth: 200,
                    loading: state is CreateStockStateLoading,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
