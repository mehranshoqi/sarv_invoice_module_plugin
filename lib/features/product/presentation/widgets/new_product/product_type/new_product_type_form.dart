import '../../../../domain/entities/create_product_type/response/product_type/product_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/injection/di.dart';
import '../../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../../core/ui/b_button.dart';
import '../../../../../../core/ui/b_input.dart';
import '../../../../../../core/ui/b_toast.dart';
import '../../../../domain/entities/create_product_type/params/params.dart';
import '../../../controllers/create_product_type/cubit.dart';
import '../../../controllers/create_product_type/state.dart';

class NewProductTypeForm extends StatefulWidget {
  const NewProductTypeForm({
    Key? key,
    required this.onNewTypeCreated,
  }) : super(key: key);
  final Function(ProductType newType) onNewTypeCreated;

  @override
  State<NewProductTypeForm> createState() => _NewProductTypeFormState();
}

class _NewProductTypeFormState extends State<NewProductTypeForm> {
  late CreateProductTypeCubit _createProductTypeCubit;
  final CreateProductTypeParams _createProductTypeParams =
      CreateProductTypeParams('');

  @override
  void initState() {
    _createProductTypeCubit = sl<CreateProductTypeCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
        showCloseButton: true,
        child: Column(
          children: [
            const Spacer(),
            Text('تعریف نوع کالا', style: S.h5Bold(context)),
            const Spacer(flex: 4),
            BInput(
              onChange: (t) => _createProductTypeParams.name = t,
              expanded: true,
              placeholder: 'نام',
            ),
            const Spacer(),
            BlocProvider(
              create: (context) => _createProductTypeCubit,
              child:
                  BlocConsumer<CreateProductTypeCubit, CreateProductTypeState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  error: (err) => BToast.success(err.errorReason!.first),
                  done: (res) {
                    widget.onNewTypeCreated(res.data!.productType);
                    Navigator.pop(context);
                  },
                ),
                builder: (context, state) => BButton(
                  label: 'ثبت',
                  onTap: _createProductType,
                  loading: state is CreateProductTypeStateLoading,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      );

  void _createProductType() async {
    _createProductTypeCubit.createProductTypeF(_createProductTypeParams);
  }
}
