import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/helpers/styles.dart';
import '../../../../../../../core/injection/di.dart';
import '../../../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../../../core/ui/b_button.dart';
import '../../../../../../../core/ui/b_input.dart';
import '../../../../../../../core/ui/b_toast.dart';
import '../../../../../domain/entities/create_product_category/params/params.dart';
import '../../../../../domain/entities/create_product_category/response/category/product_category.dart';
import '../../../../../domain/entities/create_product_type/response/product_type/product_type.dart';
import '../../../../controllers/create_product_category/cubit.dart';
import '../../../../controllers/create_product_category/state.dart';

class NewProductCategoryForm extends StatefulWidget {
  const NewProductCategoryForm({
    Key? key,
    required this.selectedProductType,
    required this.onCreateNewCategory,
  }) : super(key: key);
  final ProductType selectedProductType;
  final Function(ProductCategory newProductCategory) onCreateNewCategory;

  @override
  State<NewProductCategoryForm> createState() => _NewProductCategoryFormState();
}

class _NewProductCategoryFormState extends State<NewProductCategoryForm> {
  late CreateProductCategoryCubit _createProductCategoryCubit;
  late CreateProductCategoryParams _createProductCategoryParams;

  @override
  void initState() {
    _createProductCategoryCubit = sl<CreateProductCategoryCubit>();
    _createProductCategoryParams =
        CreateProductCategoryParams('', widget.selectedProductType.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BAlertDialog(
    showCloseButton: true,
        child: Column(
          children: [
            const SizedBox(height: 36),
            Text('اضافه کردن دسته بندی', style: S.h5Bold(context)),
            const Spacer(flex: 4),
            BInput(
              onChange: (t) => _createProductCategoryParams.name = t,
              expanded: true,
              placeholder: 'عنوان',
            ),
            const Spacer(),
            BlocProvider(
              create: (context) => _createProductCategoryCubit,
              child: BlocConsumer<CreateProductCategoryCubit,
                  CreateProductCategoryState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  error: (err) => BToast.success(err.errorReason!.first),
                  done: (res) {
                    widget.onCreateNewCategory(res.data!.productCategory);
                    Navigator.pop(context);
                    return;
                  },
                ),
                builder: (context, state) => BButton(
                  label: 'ثبت',
                  onTap: _createProductType,
                  loading: state is CreateProductCategoryStateLoading,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      );

  void _createProductType() async {
    _createProductCategoryCubit
        .createProductCategoryF(_createProductCategoryParams);
  }
}
