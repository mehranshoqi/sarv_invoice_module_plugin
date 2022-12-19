import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/helpers/styles.dart';
import '../../../../../../../core/injection/di.dart';
import '../../../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../../../core/ui/b_button.dart';
import '../../../../../../../core/ui/b_input.dart';
import '../../../../../../../core/ui/b_toast.dart';
import '../../../../../domain/entities/create_unit/params/params.dart';
import '../../../../../domain/entities/create_unit/response/product_unit/product_unit.dart';
import '../../../../controllers/create_product_unit/cubit.dart';
import '../../../../controllers/create_product_unit/state.dart';

class NewProductUnitForm extends StatefulWidget {
  const NewProductUnitForm({
    Key? key,
    required this.onCreateNewUnit,
  }) : super(key: key);
  final Function(ProductUnit productUnit) onCreateNewUnit;

  @override
  State<NewProductUnitForm> createState() => _NewProductUnitFormState();
}

class _NewProductUnitFormState extends State<NewProductUnitForm> {
  late CreateProductUnitCubit createProductUnitCubit;
  late CreateUnitParams _createUnitParams;

  @override
  void initState() {
    createProductUnitCubit = sl<CreateProductUnitCubit>();
    _createUnitParams = CreateUnitParams('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        showCloseButton: true,
        child: Column(
          children: [
            const SizedBox(height: 36),
            Text('اضافه کردن واحد', style: S.h5Bold(context)),
            const Spacer(flex: 4),
            BInput(
              onChange: (t) => _createUnitParams.name = t,
              expanded: true,
              placeholder: 'نام',
            ),
            const Spacer(),
            BlocProvider(
              create: (context) => createProductUnitCubit,
              child:
                  BlocConsumer<CreateProductUnitCubit, CreateProductUnitState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  error: (err) => BToast.success(err.errorReason!.first),
                  done: (res) {
                    widget.onCreateNewUnit(res.data!.productUnit);
                    Navigator.pop(context);
                    return;
                  },
                ),
                builder: (context, state) => BButton(
                  label: 'ثبت',
                  onTap: _createProductUnit,
                  loading: state is CreateProductUnitStateLoading,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      );

  void _createProductUnit() async =>
      createProductUnitCubit.createProductUnitF(_createUnitParams);
}
